use productdb;
create table products(
pro_id varchar(30) primary key,
pro_name varchar(100),
pro_price int
);
alter table products add pro_stock int;
alter table products change pro_price  unit_price int;
insert into products(pro_id,pro_name,unit_price,pro_stock)values
(100,'Lipstick',250,50),
(101,'Sunscreen',400,150),
(102,'Moisturizer',350,38),
(103,'Facewash',300,80),
(104,'Lipliner',80,50);
select * from products;
UPDATE products 
SET pro_stock =1000 
WHERE pro_id='101';
delete from products
 where pro_id=102;
 


