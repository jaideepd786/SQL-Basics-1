show databases;    -- Show databases 
create database cds10;   -- create databases
show databases;           
-- drop database cds10; (Comment)

use cds10;         -- use database cds10 recently created
show tables;  

create table sample1(    -- create table sample1 in DB cds10
sid int,
sname varchar(20),
sadd varchar(30)
);


create table Student(     -- create table student in DB cds10
SID int,
SNAME char(15),
SClass int,
SContact char(10),
SAdd char(20),
SScore float
);

drop table Student;      -- drop table student from DB cds10
drop table sample1;      -- drop table sample1 from DB cds10

show tables;

show databases;

use cds10;

create table employee(    -- create table employee in DB cds10
ID varchar(3),
Name varchar(15),
Dept varchar(10),
Age int
);

insert into employee(ID,Name,Dept,Age) values         -- insert values into employee table 
('001','Mukesh','DevOps',36),
('002','Kamlesh','HR',32),
('003','Pooja','R&D',28),
('004','Sheela','ASST Man',30);

select * from employee;           -- display employee table

update employee                   -- update values in employee table
set Age=31 
where ID='004';

select * from employee;           

delete from employee              -- delete a specific row from employee table
where ID='004';

select * from employee;

describe employee;                -- describe employee table(columns, data types, is null or not, keys)

alter table employee add Experience int;     -- change table name

describe employee;   

alter table employee modify Dept varchar(15);   -- update column name or column data type
describe employee;

alter table employee drop Experience;           -- remove column from table

describe employee;

select * from employee;

alter table employee rename column ID to Emp_ID;  -- rename column name

describe employee;

alter table employee                        -- rename table name
rename to Employee;

select * from Employee;

truncate table Employee;                    -- Empty table(But it does not remove table from DB)

select * from Employee;

