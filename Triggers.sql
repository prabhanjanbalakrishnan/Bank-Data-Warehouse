create or replace function update_account_balance()
returns trigger as $$
begin
	update accounts
	set balance = balance + case
		when new.transaction_type in ('Deposit', 'Transfer In') then new.transaction_amount
		else -new.transaction_amount
	end
	where account_id = NEW.account_id;

	return new;
end;
$$ language plpgsql;

create trigger trg_update_balance
after insert on transactions
for each row
execute function update_account_balance();


