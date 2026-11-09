insert into banks (bank_name)
values
	('American Express'),
	('Bank of America'),
	('Chase Bank'),
	('SoFi Bank');

insert into customers (first_name, last_name, street, city, state, zip_code, email)
values
	('Prabhanjan', 'Balakrishnan', '64 Subway St', 'New York', 'NY', '10002', 'prabhanjanb@example.com'),
	('Bindu', 'Raghu Naga', '64 Subway St', 'New York', 'NY', '10002', 'bindurn@example.com'),
	('Rahul', 'Shah', '700 West 67th St', 'New York', 'NY', '10004', 'rahuls@example.com'),
	('Marcus', 'Davis', '347 Ocean Ave', 'Jersey City', 'NJ', '07307', 'marcusd@example.com'),
	('John', 'Smith', '417 Harrison Dr', 'Newport Beach', 'CA', '92657', 'johns@example.com');
	
insert into accounts (bank_id, customer_id, account_number, account_type, opened_at, status)
values
	(1, 1, '1000010557', 'Savings', '2026-05-31 09:35:37', 'Open'),
	(4, 1, '4000020664', 'Savings', '2026-05-31 10:37:49', 'Open'),
	(3, 1, '3000020886', 'Checking', '2026-07-24 12:37:29', 'Open'),
	(1, 2, '1000010997', 'Savings', '2025-06-30 11:15:07', 'Open'),
	(3, 2, '3000040665', 'Checking', '2026-08-15 13:17:07', 'Open'),
	(4, 4, '400005089', 'Savings', '2026-09-12 14:12:02', 'Open'),
	(2, 3, '200004400', 'Checking', '2024-07-26 16:04:34', 'Open'),
	(3, 3, '300003634', 'Savings', '2025-11-27 14:32:47', 'Open'),
	(2, 4, '200004665', 'Savings', '2025-10-31 11:39:26', 'Open');