create database ProductDB;
use ProductDB;
show tables;
create table products(
product_id varchar(30),
product_name varchar(100),
product_price int
);
desc products;
-- add colum name --
alter table products add stock int;
desc products;

-- rename column name --
alter table products change product_price unit_price int;
desc products;
