--Q1- Create Database and Table and assign keys--

create database MotorsCertificatiion;

use MotorsCertificatiion;

create table orderdetails(orderNumber  int primary key, productcode varchar(50), quantityordered int, priceEach float, orderlineNumber smallint);
alter table orderdetails add foreign key(productcode) references products(productscode) on delete set null

alter table orderdetails 
add constraint Fk_orderdetails_orders
foreign key(orderNumber) references orders(orderNumber);



create table customers(customerNumber int primary key, customerName varchar(50), ContackLastName varchar(50), ContackFirstName varchar(50), phone varchar(50), addressLine1 varchar(50), 
addressLine2 varchar(50), city varchar(50), state varchar(50), PostalCode varchar(15), Country varchar(50), SalesRepEmployeeNumber int, CreditLimit float);

alter table customers add constraint Fk_customers_Employee
foreign key(SalesRepEmployeeNumber) references employee(employeeNumber);



create table Employee(EmployeeNumber int primary key, LastName varchar(50), FristName varchar(50),	extension varchar(50), email varchar(50), OfficeCode varchar(50), ReportsTo int, JobTitle varchar(50));

alter table employee add foreign key(reportsTo) references employee(employeeNumber);
alter table employee add foreign key(OfficeCode) references offices(officecode);

	

create table orders(orderNumber int primary key, orderdate date, requireddate date, shippeddate date, status varchar(50), comments text, CustomerNumber int);

alter table orders add foreign key(CustomerNumber) references customers(customerNumber);



create table offices(OfficeCode varchar(50) primary key, city varchar(50), phone varchar(50), addressLine1 varchar(50), addressLine2 varchar(50), state varchar(50), country varchar(50), postalcode varchar(50), territory varchar(50))



create table payments(CustomerNumber int primary key, checkNumber varchar(50), paymentdate date, amount float);

alter table payments add constraint Fk_payments_customers
foreign key (CustomerNumber) references customers(customerNumber)


create table productlines(productline varchar(50) primary key, textdescription varchar(4000));

create table products(ProductsCode varchar(50) primary key, productName varchar(50), productLine varchar(50), productscale varchar(50), productvendor varchar(50),
productDescription text, quantityinStock smallint, buyprice float, MSRP float);

alter table products add foreign key(productline) references  productlines(productline);

