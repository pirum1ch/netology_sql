create table customers 
(id serial primary key, 
name varchar (255), 
surname varchar (255), 
age smallint, 
phone_number bigint);

insert into customers (name, surname, age, phone_number)
values ('alexey', 'ivanov', 33, 89998174566),
('ALEXEY', 'SIDOROV', 23, 88889998877),
('DmiTry', 'Pirumov', 13, 09876543222),
('Anna', 'Pirumova', 8, 89990015161);
