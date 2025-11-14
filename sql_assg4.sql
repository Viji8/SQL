use productdb;
show tables;
create table orders(
id varchar(30),
product_name varchar(100),
quantity int,
price int
);
insert into orders(id,product_name,quantity,price)values
(1001,'Lipstick',2,500),
(1002,'Tinted Sunscreen',1,1300),
(1003,'Face Wash',3,750),
(1004,'Moisturizer',3,760),
(1005,'Lipliner',2,140);
desc orders;
select * from orders;


