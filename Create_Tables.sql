create table customers (
	customer_id integer primary key generated always as identity,
	first_name text not null,
	last_name text not null,
	street text,
	city text,
	state text,
	zip_code text,
	email text unique,
	created_at timestamptz not null default now()
);

create table banks(
	bank_id integer primary key generated always as identity,
	bank_name text unique not null
);

create table accounts(
	account_id integer primary key generated always as identity,
	bank_id integer not null,
	customer_id INTEGER not null,
	account_number text not null,
	account_type text not null check (account_type in ('Checking', 'Savings')),
	balance numeric (12,2) not null default 0,
	opened_at timestamptz not null default now(),
	status text not null default 'Open' check (status in ('Open', 'Closed')),
	foreign key (customer_id) references customers(customer_id),
	foreign key (bank_id) references banks(bank_id),
	unique(bank_id, account_number)
);

create table transactions(
	transaction_id integer primary key generated always as identity,
	account_id integer not null,
	transaction_date timestamptz not null default now(),
	category text not null,
	transaction_type text not null check (transaction_type in ('Deposit', 'Withdrawal', 'Transfer In', 'Transfer Out')),
	transaction_amount numeric (12,2) not null check (transaction_amount > 0),
	description text,
	foreign key (account_id) references accounts(account_id)
);

create index idx_transaction_account_id on transactions(account_id);
	
	
	
