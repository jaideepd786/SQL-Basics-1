show databases;
use classicmodels;
show tables;
select * from customers;
select contactFirstName,contactLastName,creditLimit from customers;
select  * from employees;
select firstName,lastName,jobTitle from employees;
select contactFirstName,contactLastName,creditLimit 
from customers where creditLimit>50000 and creditLimit<100000;

select contactFirstName,contactLastName,creditLimit from customers where creditLimit<50000;
select country from customers;
select contactFirstName,contactLastName,creditLimit,country from customers where country='USA';
select contactFirstName,contactLastName,creditLimit,country from customers where creditLimit>100000 and country='USA';
select distinct(country) from customers;
select count(distinct(country)) from customers;
select country,count(customerNumber) from customers group by country;

select count(*) from customers where state is null;
select count(*) from customers where phone is null;
select count(*) from customers where city is null;
select count(*) from customers where creditLimit is null;
select count(*) from customers where postalCode is null;
select * from customers where state is null;

select contactFirstName,contactLastName,state,country 
from customers 
where state is not null;

select productName,productLine,MSRP 
from products
order by MSRP desc limit 5;

select contactFirstName,contactLastName,country
from customers
where country in ('USA','UK','Spain');

select productName from products;

select distinct(productName) from products;

select contactFirstName,contactLastName,creditLimit 
from customers
where creditLimit between 50000 and 100000
order by creditlimit desc;

select min(MSRP), max(MSRP) from products;

select productName,productLine,MSRP
from products
where MSRP between 50 and 150;

select contactFirstName,contactLastName,creditLimit 
from customers
where contactLastName like '%on%';

select contactFirstName,contactLastName,creditLimit 
from customers
where contactFirstName like 'p%r';

select count(productline) 
from products 
where productline='Classic Cars';

select sum(MSRP) as total
from products
where productLine='Classic Cars';

select productLine from products;

select sum(MSRP) as total_MSRP,productLine
from products
group by productLine
order by total_MSRP desc;

select count(MSRP) as cc_count, sum(MSRP) as cc_total, avg(MSRP) as cc_avg, min(MSRP) as cc_min, max(MSRP) as cc_max
from products;

select count(customerNumber) 
from customers 
where country='USA';

select min(creditLimit) 
from customers 
where country='UK';

select avg(creditLimit) 
from customers 
where country='Spain';



