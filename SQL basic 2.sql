show databases;
use classicmodels;       -- use sample databse classicmodels

show tables;             -- show tables of classicmodes DB

select * from customers;   -- display customers tables

select contactFirstName,contactLastName,creditLimit from customers;   -- display specific columns from customers table

select * from employees;        -- display employee table
 
select firstName,lastName,jobTitle from employees;                   -- display specific columns from employee table

select contactFirstName,contactLastName,creditLimit from customers where creditLimit>50000 and creditLimit<100000;   -- display specific columns from customers table based on particular condition

select contactFirstName,contactLastName,creditLimit from customers where creditLimit<50000;            

select country from customers;

select contactFirstName,contactLastName,creditLimit,country from customers where country='USA';

select contactFirstName,contactLastName,creditLimit,country from customers where creditLimit>100000 and country='USA';

select distinct(country) from customers;                       -- display unique values of column from customer table

select count(distinct(country)) from customers;                -- display number of unique values 


show tables;

select * from employees;

select * from offices;

select * from orders;

select * from products;

select * from payments;

select * from customers;

select count(productLine) as count_Motcycle from products where productLine='Motorcycles';     -- Aggreagate count function based on condition

select sum(MSRP) as Total_Motcycle from products where productLine='Motorcycles';              -- Aggreagate SUM function based on condition

select avg(MSRP) as avg_Motcycle from products where productLine='Motorcycles';                -- Aggreagate AVG function based on condition

select min(MSRP) as min_Motcycle from products where productLine='Motorcycles';                -- Aggreagate MIN function based on condition

select max(MSRP) as max_Motcycle from products where productLine='Motorcycles';                -- Aggreagate MAX function based on condition

select productLine,count(productLine) as count_PL                        -- Group by clause to group unique value and use agregate funciton
from products
group by productLine;

select productLine,count(productLine) as count_PL,min(MSRP) as count_MIN,max(MSRP) as count_MAX,
sum(MSRP) as count_SUM,avg(MSRP) as count_AVG
from products                                                            -- group by clause with aggregate function 
group by productLine
order by count_PL desc limit 5;                                          -- order by function to order the result based on column (limit to display n records)

select country, count(creditlimit) as CC_count, min(creditLimit),max(creditLimit),avg(creditLimit)
from customers
group by country                                                       
having CC_count>10                                                   -- having clause(can be used only with groupby clause) to proide condition
order by CC_count desc;

select jobTitle, count(jobTitle) as jobtitle_count
from employees
group by jobtitle
order by jobtitle_count desc;

select creditlimit
from customers
order by creditlimit desc limit 1;



