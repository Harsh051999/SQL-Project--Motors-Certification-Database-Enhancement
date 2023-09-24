use MotorsCertificatiion;


--Q3- Find out the highest and the lowest amount.--


select MAX(amount) as highest_amount, MIN(amount) as lowest_amount 
from payments;

select * from payments;

--Q4- Give the unique count of customerName from customers--

select count(distinct customerName) as unique_customer_count
from customers;

select * from customers


---Q5- Create a view from customers and payments named cust_payment and select customerName, amount, contactLastName, contactFirstName who have paid.--

create view cust_payment as
select customers.customerName, payments.amount, customers.ContackLastName, customers.ContackFirstName
from customers
join payments
on customers.customerNumber = payments.CustomerNumber

--select data from tyhe view--

select * from cust_payment

--Truncate and Drop the view--

drop view if exists cust_payment;

--Q6- Create a stored procedure on products which displays productLine for Classic Cars.--

Create Procedure getclassiccarproductline 
as
begin
	select * from products where productLine = 'Classic cars'	
end;

--to execute the stored procedure--

exec getclassiccarproductline



--Q7- Create a function to get the creditLimit of customers less than 96800--

Create function get_cust_lowcreditlimit()
returns table
as
return
(
	select customerNumber, creditlimit
	from customers
	where CreditLimit < 96800
);

--To execute the function--

select * from get_cust_lowcreditlimit();


--Q8- Create Trigger to store transaction record for employee table which displays employeeNumber, lastName, FirstName and office code upon insertion

--To solve this question we have to create a table to store transaction records.

Create Table employee_Transaction_log(TransactionID int identity(1,1) primary key, 
	EmployeeNumber int,
	LastName varchar(50),
	FirstName varchar(50),
	OfficeCode Varchar(50),
	Transaction_time datetime default getdate()
);

-- after creating a table we have to create a trigger--

Create Trigger Employee_insert_Trigger
on employee
after insert
as
begin
	insert into employee_Transaction_log(employeeNumber, LastName, FirstName, OfficeCode)
	select employeeNumber, Lastname, FirstName, OfficeCode
	from inserted
end;


--Q9- Create a Trigger to display customer number if the amount is greater than 10,000--	
Create Trigger display_customer_Trigger
on payments
after insert
as
begin
	declare @customerNumber int;
	
	select @customerNumber = CustomerNumber
	from inserted
	where amount > 10000;

	if @customerNumber is not null
	begin
		print 'customerNumber:' + cast(@customerNumber as varchar(20));
	end
end;
