--Q10- Create Users, Roles and Logins according to 3 Roles: Admin, HR, and Employee.
--Admin can view full database and has full access, HR can view and access only employee and offices table. --Employee can view all tables only.


--Create Roles--

Create role admin;
Create role HR;
Create role employee;

--Create logins with password--

Create login Dianetest1 with password = 'Diane123';
Create login Marytest1 with password = 'Mary123';
Create login Jefftest1 with password = 'Jeff123';
create login Williamtest1 with password = 'William123';
create login Gerardtest with password = 'Gerard123';
create login Anthonytest1 with password = 'Anthony123';
create login Leslietest1 with password = 'Leslie123';
create login LeslieTtest1 with password = 'LeslieT123';
create login Julietest1 with password = 'Julie123';
create login Stevetest1 with password = 'Steve123';
create login FoonYuetest1 with password = 'FoonYue123';
create login Georgetest1 with password = 'George123';
create login Louitest1 with password = 'Loui123';
create login GerardHtest1 with password = 'GerardH123';
create login Pamelatest1 with password = 'Pamela123';
create login Larrytest1 with password = 'Larry123';
create login Barrytest1 with password = 'Barry123';
create login Andytest1 with password = 'Andy123';
create login Petertest1 with password = 'Peter123';
create login Tomtest1 with password = 'Tom123';
create login Mamitest1 with password = 'Mami123';
create login Yoshimitest1 with password = 'Yoshimi123';
create login Martintets1 with password = 'Martin123';


--Create Users and assign them to roles--

USE MotorsCertificatiion;

Create user Dianetestuser for login Dianetest1;
Create user Marytestuser for login Marytest1; 
Create user Jefftestuser for login Jefftest1;
create user Williamtestuser for login Williamtest1;
create user Gerardtestuser for login Gerardtest;
create user Anthonytestuser for login Anthonytest1;
create user Leslietestuser for login Leslietest1;
create user LeslieTtestuser for login LeslieTtest1;
create user Julietestuser for login Julietest1;
create user Stevetestuser for login Stevetest1;
create user FoonYuetestuser for login FoonYuetest1;
create user Georgetestuser for login Georgetest1;
create user Louitestuser for login Louitest1;
create user GerardHtestuser for login GerardHtest1;
create user Pamelatestuser for login Pamelatest1;
create user Larrytestuser for login Larrytest1;
create user Barrytestuser for login Barrytest1;
create user  Andytestuser for login Andytest1;
create user Petertestuser for login Petertest1;
create user Tomtestuser for login Tomtest1;
create user Mamitestuser for login Mamitest1;
create user Yoshimitestuser for login Yoshimitest1;
create user Martintetsuser for login Martintets1;


Alter role Admin add member Dianetestuser;
Alter role	HR add member Marytestuser; 
Alter role	HR add member Jefftestuser;

alter role employee add member Williamtestuser;

alter role employee add member Gerardtestuser;
alter role employee add member Anthonytestuser;
alter role employee add member Leslietestuser;
alter role employee add member LeslieTtestuser;
alter role employee add member Julietestuser;
alter role employee add member Stevetestuser;
alter role employee add member FoonYuetestuser;
alter role employee add member Georgetestuser;
alter role employee add member Louitestuser;
alter role employee add member GerardHtestuser;
alter role employee add member Pamelatestuser;
alter role employee add member Larrytestuser;
alter role employee add member Barrytestuser;
alter role employee add member Andytestuser;
alter role employee add member Petertestuser;
alter role employee add member Tomtestuser;
alter role employee add member Mamitestuser;
alter role employee add member Yoshimitestuser;
alter role employee add member Martintetsuser;


--Grant permission--
--Admin has full access to the enrire database--

Grant control on database::Motorscertificatiion To admin;

--Hr can access only employees table and offices table--

Grant SELECT, INSERT, UPDATE, DELETE ON dbo.employee to HR;
Grant SELECT, INSERT, UPDATE, DELETE ON dbo.offices to HR;


--employee can view all table--

Grant SELECT on database::motorscertificatiion to employee;

