-- create table link(
-- id serial primary key,
-- url varchar(255) not null,
-- 	name varchar(255) not null,
-- 	description varchar(255),
-- 	rel varchar(50)
-- );

-- -- INSERT CLAUSE
-- insert into link(url, name)
-- values ('www.google.com', 'Google');


-- insert into link (url, name) values
-- ('www.yahoo.com', 'Yahoo');
-- insert into link (url, name) values ('www.bing.com', 'Bing'),
-- ('www.amazon.com','Amazon');


-- select * from link;

-- create table link2(like link);
-- select * from link2

-- insert into link2 select * from link
-- where name='Bing';

-- select * from link2;

-- -- UPDATE EXISTING DATA IN THE TABLE
-- select * from link;

-- insert into link(url,name) values
-- ('www.a.com', 'A'), ('www.b.com', 'B');

-- update link set description='Name starts with an A' where name
-- like 'A%';

-- select * from link;

-- update link set description = name;

-- select * from link;


-- update link set description = 'new description'
-- where id = 1 returning id, url, name, description;

-- update link set description = 'new description'
-- where id = 1 returning *;

-- select * from link; 

-- -- DELETE CLAUSE
-- delete  from link where name like 'B%';
-- select * from link;

-- delete from link where name = 'A' returning *;
-- select * from link;

-- select * from link;

-- -- ALTER TABLE CLAUSE
-- drop table if exists link;
-- create table link(link_id serial primary key, title varchar(512) not null,
-- 				 url varchar(1024) not null unique);
-- alter table link add column active boolean;
-- select * from link;

-- alter table link drop column active;
-- select * from link
-- alter table link rename column title to new_title;
-- select * from link;

-- alter table link rename to url_table;
-- select * from url_table;

-- -- DROP CLAUSE
-- drop table url_table;
-- drop table if exists url_table;

-- create table test1(test_id serial primary key)

-- select * from test1;
-- drop table test1;
-- drop table if exists test1;

-- drop table if exists test1 restrict -- restrict prevents dropping the table if there is an object 
-- -- which is dependent on it; postgresql uses restrict by default

-- drop table if exists test1 cascade -- cascade removes the tables dependent on the table to be dropped as well

-- -- CHECK CONSTRAINT
-- create table newusers(id serial primary key, firstname varchar(50), 
-- 					  birthdate date check(birthdate > '1900-01-01'), 
-- 					  joindate date check(joindate > birthdate), salary integer check(salary > 0));

-- select * from newusers;
-- insert into newusers(firstname, birthdate, joindate, salary)
-- values ('joe','1980-02-02','1990-04-04',-10);

-- create table checktest(sales integer constraint positive_sales check(sales>0));
-- insert into checktest(sales) values (-12);

-- NOT NULL CONSTRAINT
-- create table learn_null(first_name varchar(50), sales integer not null);
-- insert into learn_null(first_name) values ('john');
-- insert into learn_null(first_name) values ('john',12);
-- insert into learn_null(first_name, sales) values ('john', 12);

-- select * from learn_null;

-- -- UNIQUE CONSTRAINT
-- create table people(id serial primary key, first_name varchar(50), email varchar(100) unique);
-- insert into people(id, first_name, email) values (1, 'joe', 'joe@joe.com');
-- select * from people;
-- insert into people(id,first_name, email) values
-- (2, 'joseph', 'joe@joe.com');













