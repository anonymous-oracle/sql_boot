-- -- CREATING TABLES
-- create table account(user_id serial primary key, username
-- 					varchar(50) unique not null, password varchar(50) not null,
-- 					email varchar(100) unique not null,
-- 					 created_on timestamp not null, last_login timestamp);
					 
-- select * from account

-- -- create table role(role_id serial primary key, role_name varchar(128) unique not null);
-- create table account_role(
-- user_id integer not null,
-- role_id integer not null, grant_date timestamp without time zone,
-- primary key (user_id, role_id), 
--   CONSTRAINT account_role_role_id_fkey FOREIGN KEY (role_id)
--       REFERENCES role (role_id) MATCH SIMPLE
--       ON UPDATE NO ACTION ON DELETE NO ACTION,
	
--   CONSTRAINT account_role_user_id_fkey FOREIGN KEY (user_id)
--       REFERENCES account (user_id) MATCH SIMPLE
--       ON UPDATE NO ACTION ON DELETE NO ACTION);

-- -- TABLE CREATE CHALLENGE
-- create table customers(customer_id serial primary key, 
-- firstname varchar(64) not null,
-- lastname varchar(64), email varchar(100) unique not null,
-- minutes integer not null,
-- signup_date timestamp not null);













