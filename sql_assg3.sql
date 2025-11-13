create database companyDB;
use companyDB;
show databases;
create table employees(
emp_id varchar(30),
emp_name varchar(100),
emp_salary int,
emp_email varchar(100)
);
desc employees;
alter table employees add constraint unique_email unique(emp_email);
desc employees;

use companyDB;
create table products(
pro_id varchar(100),
pro_name varchar(100),
pro_price int
);
alter table products add stock int;
alter table products change pro_price unit_price int;
desc products;
