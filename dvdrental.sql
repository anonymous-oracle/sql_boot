-- -- THE ';' SYMBOL IS USED TO END THE QUERY. IT IS USED TO SIGNIFY THE END OF A QUERY.
-- -- SUPPOSE A QUERY SPANS OVER MULTIPLE LINES FOR THE SAKE OF READABILITY, THEN THE QUERY
-- -- SHOULD BE DIFFERENTIATED FROM OTHER QUEIRIES USING ';'

-- -- COLUMNS CAN BE MENTIONED IN ANY ORDER
-- select email,last_name, first_name from customer;
-- select * from actor;

-- -- '' can be used for strings only; "" are used for enclosing identifiers, objects/databse objects; `` and "" are sometimes
-- -- interchangeable

-- -- THE 'DISTINCT' KEYWORD ALLOWS TO VIEW THE UNIQUE ELEMENTS IN A COLUMN
-- select distinct (first_name,last_name),email from customer;
-- select distinct first_name,last_name,email from customer;
-- select distinct(release_year) from film;
-- select distinct release_year from film;
-- select distinct rental_rate from film;

-- -- CHALLENGE : SHOW THE DISTINCT MOVIE RATINGS AVAILABLE FOR MOVIES FROM THE TABLE FILM
-- select distinct rating from film

-- -- USING THE 'COUNT' FUNCTION; SINCE THIS IS A FUNCTION, THE INPUT SHOULD BE ENCLOSED
-- -- IN () ALWAYS
-- select count (*) from actor;

-- -- COUNT IS USUALLY USEFUL WHEN USED WITH OTHER COMMANDS
-- select count(distinct release_year) from film;
-- select count(release_year) from film;

-- select * from payment;
-- select count (*) from payment;
-- select count(amount) from payment;

-- select amount from payment;
-- select count(distinct amount) from payment;

-- -- USING THE 'WHERE' CLAUSE
-- select amount from payment where amount > 5;
-- select count(amount) from payment where amount < 2;
-- select count(distinct amount) from payment where amount < 5;
-- select count(distinct amount) from payment where amount > 5;
-- select count(distinct amount) from payment where amount < 5 and amount > 2;
-- select distinct amount from payment where amount < 5 and amount > 2;

-- select * from customer
-- where first_name = 'Jared';

-- select * from film
-- where rental_rate > 4 and replacement_cost >= 19.99;

-- select count(*) from film
-- where rental_rate > 4 and replacement_cost >= 19.99;

-- select * from film
-- where rental_rate>4 and replacement_cost >= 19.99
-- and rating='R';

-- select count(description) from film
-- where rental_rate>4 and replacement_cost >= 19.99
-- and rating='R';

-- -- OR

-- select count(*) from film
-- where rental_rate>4 and replacement_cost >= 19.99
-- and rating='R';

-- select count(*) from film
-- where rating = 'R' OR rating = 'PG-13';

-- select * from film where rating != 'R';

-- -- CHALLENGE FOR WHERE CLAUSE
-- select email from customer where first_name='Nancy'
-- and last_name='Thomas';

-- select description from film where title='Outlaw Hanky';

-- select phone from address where address='259 Ipoh Drive';

-- -- SORTING ROWS BASED ON COLUMN VALUE USING 'ORDER BY' AND 'ASC/DESC'
-- -- IF LEFT BLANK, THEN 'ORDER BY' USES 'ASC'ENDING BY DEFAULT

-- select * from customer order by first_name;

-- select * from customer order by first_name desc;

-- select * from customer
-- order by store_id;

-- select store_id,first_name,last_name from customer
-- order by store_id;

-- select store_id,first_name,last_name from customer
-- order by store_id,first_name;

-- select store_id,first_name,last_name from customer
-- order by store_id desc, first_name asc ;

-- select store_id,first_name,last_name from customer
-- order by store_id desc, first_name;

-- select first_name,last_name from customer
-- order by store_id desc, first_name asc ;

-- -- 'LIMIT' CLAUSE
-- select * from payment 
-- where amount!=0
-- order by payment_date desc
-- limit 5;
-- -- NOTE THE ORDER OF COMMANDS/KEYWORDS ABOVE

-- -- CHALLENGE FOR 'ORDER BY'
-- select customer_id from payment order by payment_date asc limit 10;

-- select title, "length" from film order by "length" limit 5;

-- select count(distinct (title, "length")) from film where "length" <= 50
-- select count(title) from film where "length" <= 50

-- -- 'BETWEEN' CLAUSE
-- select count(*) from payment
-- where amount between 8 and 9;
-- where amount not between 8 and 9;

-- select * from payment
-- where payment_date between '2007-02-01' and '2007-02-15'; 

-- -- 'IN' OPERATOR
-- select * from film where replacement_cost in (14.99,19.99,16.99,15.99)
-- select * from film where replacement_cost not in (14.99,19.99,16.99,15.99)

-- -- LIKE(CASE SENSITIVE) AND ILIKE(CASE INSENSITIVE)
-- '_' MATCH SINGLE CHARACTER AND '%' MATCHES ZERO OR MORE CHARACTERS
-- select title from film where title like '_s%'
-- select title from film where title not like '_s%'
-- select title from film where title ilike 's%'
-- select title from film where title not ilike 's%'
