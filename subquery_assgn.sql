use employee;
create table employees01(
    emp_id int primary key,
    emp_name varchar(100),
    salary int
);
create table products01(
    product_id int primary key,
    product_name varchar(100),
    price int
);

create table customers01(
    customer_id int primary key,
    customer_name varchar(100)
);

create table orders01(
    order_id int primary key,
    customer_id int,
    product_id int,
    price int
);

insert into employees01 values
(1,'Jay',30000),
(2,'Vijay',45000),
(3,'Bala',50000),
(4,'Dhaanya',25000);

insert into products01 values
(101,'Lipstick',250),
(102,'Sunscreen',400),
(103,'Moisturizer',350);

insert into customers01 values
(1,'Raj'),
(2,'Raji'),
(3,'Aarthi');

insert into orders01 values
(1001,1,101,250),
(1002,1,103,350),
(1003,2,102,400);

select *
from employees01
where salary > (
    select avg(salary) from employees01
);
select *
from products01
where price > (
    select MIN(price) from orders01
);
select *
from customers01
where customer_id in (
    select customer_id from orders01
);
select
    c.customer_id,
    c.customer_name,
    (select COUNT(*) from orders01 o 
     where o.customer_id = c.customer_id) as total_orders
from customers01 c;
select *
from products01
where exists (
    select 1 
    from orders01 o
    where o.product_id = products01.product_id
);
