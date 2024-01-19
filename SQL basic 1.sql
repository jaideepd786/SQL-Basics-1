show databases;
create database cds10;
show databases;
-- drop database cds10; (Comment)

use cds10;
show tables;

create table sample1(
sid int,
sname varchar(20),
sadd varchar(30)
);


create table Student(
SID int,
SNAME char(15),
SClass int,
SContact char(10),
SAdd char(20),
SScore float
);

drop table Student;
drop table sample1;

show tables;

show databases;

use cds10;

create table employee(
ID varchar(3),
Name varchar(15),
Dept varchar(10),
Age int
);
insert into employee values
('001','Mukesh','DevOps',36),
('002','Kamlesh','HR',32),
('003','Pooja','R&D',28),
('004','Sheela','ASST Man',30);

select * from employee;

update employee
set Age=31 
where ID='004';

select * from employee;

delete from employee 
where ID='004';

select * from employee;

describe employee;

alter table employee add Experience int;

describe employee;

alter table employee modify Dept varchar(15);
describe employee;

alter table employee drop Experience;

describe employee;

select * from employee;

alter table employee rename column ID to Emp_ID;

describe employee;

alter table employee 
rename to Employee;

select * from Employee;

truncate table Employee;

select * from Employee;

