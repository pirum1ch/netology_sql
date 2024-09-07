create table orders 
(id serial primary key, 
date timestamptz, 
customer_id integer,
product_name varchar(255), 
amount bigint,
foreign key (customer_id) REFERENCES customers(id));

insert into orders ("date", customer_id, product_name, amount)
values ('2024-08-22 18:36:12.411 +0300', 1, 'Vodka', 500),
('2024-08-21 18:36:12.411 +0300', 2, 'Chips', 50),
('2024-04-02 18:36:12.411 +0300', 3, 'Bread', 22);