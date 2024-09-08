--liquibase format sql
--changeset authorname:pirumovda
 create table test
(id serial primary key, 
test varchar (255));

insert into test (test)
values ('test'),
('test-2');
