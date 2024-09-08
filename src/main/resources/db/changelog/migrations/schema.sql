--liquibase format sql
--changeset authorname:pirumovda
 create table customers
(id serial primary key, 
name varchar (255), 
surname varchar (255), 
age smallint, 
phone_number varchar (25));

create table orders 
(id serial primary key, 
date timestamptz, 
customer_id integer,
product_name varchar(255), 
amount bigint,
foreign key (customer_id) REFERENCES customers(id));

insert into customers (name, surname, age, phone_number)
values ('alexey', 'ivanov', 33, '89998174566'),
('ALEXEY', 'SIDOROV', 23, '88889998877'),
('DmiTry', 'Pirumov', 13, '09876543222'),
('Anna', 'Pirumova', 8, '89990015161');

insert into orders ("date", customer_id, product_name, amount)
values ('2024-08-22 18:36:12.411 +0300', 1, 'Vodka', 500),
('2024-08-21 18:36:12.411 +0300', 2, 'Chips', 50),
('2024-04-02 18:36:12.411 +0300', 3, 'Bread', 22);