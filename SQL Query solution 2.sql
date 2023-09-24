--Load all the Excel CSv data  in database tables using bulk insert statement--

Use MotorsCertificatiion;

Bulk insert customers
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\customers.csv'
with(format = 'csv',
	Firstrow = 2,
	Fieldterminator = ',',
	Rowterminator = '0x0a');

select * from customers


Bulk insert Employee
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\Employees.csv'
with(format = 'csv',
	FirstRow = 2,
	Fieldterminator = ',',
	Rowterminator = '0x0a');

select * from Employee


Bulk insert offices
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\offices.csv'
with(format = 'csv',
	FirstRow = 2,
	Fieldterminator = ',',
	Rowterminator = '0x0a');

select * from offices


Bulk insert orderdetails
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\orderdetails.csv'
with(format = 'csv',
	FirstRow = 2,
	Fieldterminator = ',',
	Rowterminator = '0x0a');

select * from orderdetails


Bulk insert orders
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\orders.csv'
with(format = 'csv',
	Firstrow = 2,
	Fieldterminator = ',',
	Rowterminator = '0x0a');

select * from orders


Bulk insert payments
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\payments.csv'
with(format = 'csv',
	FirstRow = 2,
	Fieldterminator = ',',
	Rowterminator = '0x0a');

select * from payments


Bulk insert productlines
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\productlines.csv'
with(format = 'csv',
	FirstRow = 2,
	Fieldterminator = ',',
	Rowterminator = '\n',
	batchsize = 1000	
);

select * from productlines


Bulk insert products
from 'C:\Users\dell pc\Desktop\SQL\SQL project\project data 2\products.csv'
with(format = 'csv',
	FirstRow  = 2,
	Fieldterminator = ',',
	Rowterminator = '0x0a');

select * from products	
