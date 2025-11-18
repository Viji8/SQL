create database shopdb;
use shopdb;
create table customers(
customer_id int primary key,
customer_name varchar(100),
customer_address varchar(100),
city varchar(100)
);
create table orders(
order_id int primary key,
customer_id int,
product_name varchar(100),
amount int,
foreign key(customer_id)references customers(customer_id)
);
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Arun', 'Chennai'),
(2, 'Vaishnavi', 'Mumbai'),
(3, 'Madhi', 'Delhi'),
(4, 'Priya', 'Hyderabad'),
(5, 'Varsha', 'Bangalore');
INSERT INTO orders (order_id, customer_id, product_name, amount) VALUES
(101, 1, 'Laptop', 55000),
(102, 2, 'Lipstic', 300),
(103, 3, 'Foundation', 700),
(104, 1, 'Keyboard', 1500),
(105, 4, 'Compact', 500);
SELECT 
    customers.customer_name,
    orders.product_name,
    orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;
SELECT 
    customers.customer_name,
    orders.product_name,
    orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;



