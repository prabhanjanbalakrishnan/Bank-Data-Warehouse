insert into transactions (account_id, transaction_date, category, transaction_type, transaction_amount, description)
values
	(3, '2026-08-01 09:00:00', 'Income', 'Deposit', 2500.00, 'Paycheck');

insert into transactions (account_id, transaction_date, category, transaction_type, transaction_amount, description)
values
	(3, '2026-08-15 12:35:15', 'Food', 'Withdrawal', 80.00, 'Gupshup');

insert into transactions (account_id, transaction_date, category, transaction_type, transaction_amount, description)
values
	(3, '2026-09-11 08:31:32', 'Transfer', 'Transfer Out', 500, 'Bank Transfer'),
	(1, '2026-09-13 08:31:33', 'Transfer', 'Transfer In', 500, 'Bank Transfer');