-- select min(replacement_cost),min(rental_rate) from film;
-- select avg(replacement_cost) from film;
-- select round(avg(replacement_cost), 3) from film;
-- select round(avg(replacement_cost), 5) from film;
-- select sum(replacement_cost) from film;

-- -- GROUP BY IS USED ON CATEGORICAL COLUMNS SUCH AS COLUMNS WITH VALUES LIKE ONLY A,B,B,C,B,A,C
-- -- AND CATEGORICAL DOES NOT MEAN NON NUMERIC

-- select customer_id from payment group by customer_id order by customer_id desc;
-- select customer_id,sum(amount) from payment group by customer_id order by sum(amount);
-- select customer_id, count(amount) from payment group by customer_id order by count(amount) desc;
-- select customer_id, staff_id,sum(amount) from payment group by staff_id, customer_id order by customer_id;

-- select date(payment_date) from payment group by date(payment_date)
-- select date(payment_date),sum(amount) from payment group by date(payment_date) order by sum(amount) desc

-- -- GROUP BY CHALLENGE
-- select staff_id, count(amount) from payment group by staff_id order by count(amount) desc
-- select rating, round(avg(replacement_cost),3) from film group by rating
-- select customer_id, sum(amount) from payment group by customer_id order by sum(amount) desc

-- -- HAVING CLAUSE
-- select customer_id, sum(amount) from payment group by customer_id
-- select customer_id, sum(amount) from payment where customer_id!=2 group by customer_id order by customer_id
-- select customer_id, sum(amount) from payment where customer_id not in (1,3,5) group by customer_id order by customer_id
-- select customer_id, sum(amount) from payment group by customer_id having sum(amount) > 100

-- select store_id,count(customer_id) from customer group by store_id having count(customer_id) > 280

-- -- HAVING CHALLENGE
-- select customer_id, count(amount) from payment group by customer_id having count(payment) >= 40 order by count(payment) desc
-- select customer_id, sum(amount) from payment where staff_id=2 group by customer_id having sum(amount)>100 order by sum(amount) desc

-- -- JOINS
-- -- AS CLAUSE; USED TO CREATE ALIAS
-- select amount as rental_price from payment;
-- select sum(amount) as net_revenue from payment;
-- -- NOTE: AS CAN ONLY BE USED WITH SELECT STATEMENT AND THE ALIAS REPLACEMENT HAPPENS AT THE VERY END OF THE QUERY
-- select count(amount) as num_transactions from payment
-- select count(*) as num_transactions from payment

-- select customer_id,sum(amount) as total_spent from payment group by customer_id having sum(amount) > 100 
-- -- IN THE ABOVE EXAMPLE, WE CAN'T USE THE ALIAS INSTEAD OF SUM(AMOUNT)
-- select customer_id, amount as new_name from payment where amount > 2

-- -- INNER JOIN (BASICALLY SET INTERSECTION)
-- select * from payment inner join customer on payment.customer_id = customer.customer_id;
-- select payment_id, payment.customer_id from payment inner join customer on payment.customer_id = customer.customer_id;
-- select payment_id, payment.customer_id, first_name from payment inner join customer on payment.customer_id = customer.customer_id;

-- -- NOTE: FOR COLUMNS WHICH ARE UNIQUE ACROSS TABLES, IT IS ENOUGH TO JUST MENTION THE COLUMN NAME. BUT FOR THOSE TABLES
-- -- WITH SAME COLUMN NAMES ACROSS, WE HAVE TO MENTION <TABLE_NAME>.<COLUMN_NAME>

-- -- OUTER JOINS
-- select * from customer full outer join payment on customer.customer_id =payment.customer_id
-- select * from customer full outer join payment on customer.customer_id =payment.customer_id where customer.customer_id is null or payment.payment_id is null
-- select count(*) from customer full outer join payment on customer.customer_id =payment.customer_id where customer.customer_id is not null or payment.customer_id is not null
-- select count(distinct  customer_id) from customer

-- -- LEFT OUTER JOIN
-- select film.film_id, title, inventory_id from film left join inventory on film.film_id = inventory.film_id
-- select film.film_id, title, inventory_id from film left join inventory on film.film_id = inventory.film_id where inventory.film_id is null

-- -- RIGHT JOIN
-- select film.film_id, title, inventory_id from inventory right join film on film.film_id = inventory.film_id where inventory.film_id is null

-- -- TIME STAMPS
-- select extract(day from payment_date) from payment;
-- select customer_id,extract(day from payment_date) as day from payment;
-- select sum(amount), extract(month from payment_date) as month from payment group by month order by sum(amount) desc;
-- select sum(amount) as total, extract(month from payment_date) as month from payment group by month order by total desc limit 1;

-- -- MATHEMATICAL FUNCTIONS
-- select customer_id+rental_id as new_id from payment;
-- select customer_id+rental_id from payment;
-- select customer_id*rental_id as new_id from payment;
-- select customer_id/rental_id as new_id from payment; -- integer division
-- select rental_id/customer_id as new_id from payment;
-- select round(avg(amount), 2) from payment;

-- -- STRING FUNCTIONS
-- select * from customer;
-- select first_name||' '||last_name from customer;
-- select first_name||' '||last_name as full_name from customer;
-- select first_name, char_length(first_name) from customer;
-- select first_name,'character count in name: '||char_length(first_name) as character_counts from customer;
-- select lower(first_name) from customer;
-- select upper(first_name) from customer;

-- -- SUBQUERY
-- select film_id, title, rental_rate from film where rental_rate > (select avg(rental_rate) from film);
-- select inventory.film_id from rental inner join inventory on inventory.inventory_id = rental.inventory_id where return_date between '2005-05-29' and '2005-05-30'
-- select film_id, title from film where film_id in (select inventory.film_id from rental inner join inventory on inventory.inventory_id = rental.inventory_id where return_date between '2005-05-29' and '2005-05-30')

-- -- SELF JOIN
-- select a.first_name, a.last_name, b.first_name, b.last_name from customer as a, customer as b where a.first_name = b.last_name
-- select a.first_name, a.last_name, b.first_name, b.last_name from customer as a join customer as b on a.first_name = b.last_name
-- select a.first_name, a.last_name, b.first_name, b.last_name from customer as a join customer as b on a.first_name = b.last_name order by a.customer_id








