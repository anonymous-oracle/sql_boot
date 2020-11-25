-- select * from customer;

-- -- VIEW CLAUSE
-- select first_name, last_name, email, address, phone from customer
-- join address on customer.address_id = address.address_id;

-- -- SAVE THE VIEW INSTEAD OF CREATING IT AGAIN AND AGAIN
-- create view customer_info as select first_name, last_name, email, address, phone from customer
-- join address on customer.address_id = address.address_id;

-- select * from customer_info;

-- -- ALTER VIEW
-- alter view customer_info rename to customer_master_list; 
-- select * from customer_master_list;

-- -- REMOVING VIEW
-- drop view customer_master_list;
-- drop view if exist customer_master_list;







