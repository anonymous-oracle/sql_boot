-- -- USING DATABASE FROM 'mysqlsampledatabase.sql'

--------------------------------------------------------------------------------------------------------------------------------------

-- --  The SELECT statement allows you to select data from one or more tables. To write a SELECT statement in MySQL, you use this syntax:
-- --  SELECT select_list FROM table_name;
-- select lastName
-- from employees;
-- SELECT lastName, firstName, jobTitle
-- FROM employees;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- ALTERNATE USE OF SELECT STATEMENTS
-- SELECT 1 + 1;
-- SELECT NOW();
-- SELECT CONCAT('John',' ','Doe');

-- -- Sometimes, you still need to use the FROM clause but you don’t want to reference any actual table. In this case, you can use the dual table in the FROM clause:
-- SELECT select_list
-- FROM dual;

-- -- A quick introduction to the column alias

-- -- By default, MySQL uses the expression specified in the SELECT clause as the column name of the result set. To change a column name of the result set, you can use a column alias:

-- SELECT expression AS column_alias;

-- -- To assign an alias to a column, you place the AS keyword after the expression followed by a column alias. The AS keyword is optional, so you can skip it like this:

-- SELECT expression column_alias;

-- -- If the column alias contains spaces, you need to place it inside quotes like this:
-- SELECT CONCAT('Jane',' ','Doe') AS 'Full name';

--------------------------------------------------------------------------------------------------------------------------------------

-- Introduction to the MySQL ORDER BY clause

-- When you use the SELECT statement to query data from a table, the order of rows in the result set is unspecified. To sort the rows in the result set, you add the ORDER BY clause to the SELECT statement.

-- -- The following illustrates the syntax of the ORDER BY clause:
-- SELECT select_list FROM table_name ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;

-- SELECT contactLastname, contactFirstname
-- FROM customers
-- ORDER BY contactLastname;

-- SELECT contactLastname, contactFirstname
-- FROM customers
-- ORDER BY contactLastname DESC;

-- -- Using MySQL ORDER BY clause to sort a result set by an expression example
-- SELECT orderNumber, orderlinenumber, quantityOrdered * priceEach
-- FROM orderdetails
-- ORDER BY quantityOrdered * priceEach DESC;
-- SELECT orderNumber, orderlinenumber, quantityOrdered * priceEach AS subtotal
-- FROM orderdetails
-- ORDER BY quantityOrdered * priceEach DESC;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- Using MySQL ORDER BY clause to sort data using a custom list
-- -- The FIELD() function has the following syntax:
-- -- FIELD(str, str1, str2, ...)
-- SELECT FIELD('A', 'A', 'B','C');
-- SELECT FIELD('B', 'A', 'B','C');

-- -- Suppose that you want to sort the sales orders based on their statuses in the following order:

-- --     In Process
-- --     On Hold
-- --     Canceled
-- --     Resolved
-- --     Disputed
-- --     Shipped

-- -- To do this, you can use the FIELD() function to map each order status to a number and sort the result by the result of the FIELD() function:

-- SELECT orderNumber, status
-- FROM orders
-- ORDER BY FIELD(status, 'In Process', 'On Hold', 'Cancelled', 'Resolved', 'Disputed', 'Shipped');

--------------------------------------------------------------------------------------------------------------------------------------

-- -- MySQL ORDER BY and NULL

-- -- In MySQL, NULL comes before non-NULL values. Therefore, when you the ORDER BY clause with the ASC option, NULLs appear first in the result set.

-- -- For example, the following query uses the ORDER BY clause to sort employees by values in the reportsTo column:

-- SELECT firstName, lastName, reportsTo
-- FROM employees
-- ORDER BY reportsTo;
-- select firstName, lastName, reportsTo
-- from employees
-- order by reportsTo desc;


--------------------------------------------------------------------------------------------------------------------------------------

-- -- The WHERE clause allows you to specify a search condition for the rows returned by a query. The following shows the syntax of the WHERE clause:

-- SELECT 
-- --     select_list
-- -- FROM
-- --     table_name
-- -- WHERE
-- --     search_condition;

-- select firstName, lastName, jobTitle
-- from employees
-- where jobTitle='Sales Rep';
-- select firstName, lastName, jobTitle, officeCode
-- from employees
-- where jobTitle='Sales Rep' and officeCode=1;
-- select firstName, lastName, jobTitle, officeCode
-- from employees
-- WHERE jobtitle = 'Sales Rep' OR officeCode = 1
-- ORDER BY officeCode,jobTitle;
-- select firstName, lastName, jobTitle, officeCode
-- from employees
-- WHERE  officeCode BETWEEN 1 AND 3
-- ORDER BY officeCode;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- Using MySQL WHERE clause with the LIKE operator example

-- -- The LIKE operator evaluates to TRUE if a value matches a specified pattern.

-- -- To form a pattern, you use the % and _ wildcards. The % wildcard matches any string of zero or more characters while the _ wildcard matches any single character.

-- -- The following query finds the employees whose last names end with the string 'son':

-- SELECT firstName, lastName
-- FROM employees
-- WHERE lastName LIKE '%son'
-- ORDER BY firstName;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- Using MySQL WHERE clause with the IN operator example

-- -- The IN operator returns TRUE if a value matches any value in a list.

-- -- value IN (value1, value2,...)
-- -- Code language: SQL (Structured Query Language) (sql)

-- -- The following example uses the WHERE clause with the IN operator to find employees who locate in the office with office code 1.

-- SELECT firstName, lastName, officeCode
-- FROM employees
-- WHERE officeCode IN (1 , 2, 3)
-- ORDER BY officeCode;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- To check if a value is NULL or not, you use the IS NULL operator, not the equal operator (=). The IS NULL operator returns TRUE if a value is NULL.

-- -- value IS NULL
-- -- Code language: SQL (Structured Query Language) (sql)

-- -- In the database world, NULL is a marker that indicates that a value is missing or unknown. And NULL is not equivalent to the number 0 or an empty string.

-- -- The following statement uses the WHERE clause with the IS NULL operator to get the rows with the values in the reportsTo column are NULL:

-- SELECT
--     lastName,
--     firstName,
--     reportsTo
-- FROM
--     employees
-- WHERE
--     reportsTo IS NULL;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- Using MySQL WHERE clause with comparison operators

-- -- The following table shows the comparison operators that you can use to form the expression in the WHERE clause.
-- -- Operator	Description
-- -- =	Equal to. You can use it with almost any data type.
-- -- <> or !=	Not equal to
-- -- <	Less than. You typically use it with numeric and date/time data types.
-- -- >	Greater than.
-- -- <=	Less than or equal to
-- -- >=	Greater than or equal to

-- -- The following query uses the not equal to (<>) operator to find all employees who are not the Sales Rep:

-- SELECT 
--     lastname, 
--     firstname, 
--     jobtitle
-- FROM
--     employees
-- WHERE
-- jobtitle <> 'Sales Rep';

-- SELECT 
--     lastname, 
--     firstname, 
--     officeCode
-- FROM
--     employees
-- WHERE 
--     officecode > 5;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- Introduction to MySQL DISTINCT clause

-- -- When querying data from a table, you may get duplicate rows. To remove these duplicate rows, you use the DISTINCT clause in the SELECT statement.

-- -- Here’s the syntax of the DISTINCT clause:

-- -- SELECT DISTINCT
-- --     select_list
-- -- FROM
-- --     table_name
-- -- WHERE 
-- --     search_condition
-- -- ORDER BY 
-- --     sort_expression;


-- SELECT 
--     DISTINCT lastname
-- FROM
--     employees
-- ORDER BY 
--     lastname;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- MySQL DISTINCT and NULL values

-- -- When you specify a column that has NULL values in the DISTINCT clause, the DISTINCT clause will keep only one NULL value because it considers all NULL values are the same.

-- -- For example, the state column in the customers table has NULL values.

-- SELECT DISTINCT state
-- FROM customers;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- MySQL DISTINCT with multiple columns

-- -- When you specify multiple columns in the DISTINCT clause, the DISTINCT clause will use the combination of values in these columns to determine the uniqueness of the row in the result set.

-- -- For example, to get a unique combination of city and state from the customers table, you use the following query:

-- SELECT DISTINCT
--     state, city
-- FROM
--     customers
-- WHERE
--     state IS NOT NULL
-- ORDER BY 
--     state, 
--     city;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- AND operator

-- SELECT 1 AND 1;

-- SELECT 1 AND 0, 0 AND 1, 0 AND 0, 0 AND NULL;

-- SELECT 1 AND NULL, NULL AND NULL;

-- -- When evaluating an expression that contains the AND operator, MySQL stops evaluating the remaining parts of the expression as soon as it can determine the result.

-- -- This is called short-circuit evaluation. In other words, the AND operator is short-circuited. For example:

-- SELECT 1 = 0 AND 1 / 0 ;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- MySQL AND operator examples

-- -- Let’s use the customers table in the sample database for the demonstration.

-- SELECT 
--     customername, 
--     country, 
--     state
-- FROM
--     customers
-- WHERE
--     country = 'USA' AND 
--     state = 'CA';

-- SELECT 
--     customername, 
--     country, 
--     state, 
--     creditlimit
-- FROM
--     customers
-- WHERE
--     country = 'USA' AND 
--     state = 'CA' AND 
--     creditlimit > 100000;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- OR operator

-- -- When an expression contains both AND and OR operators, MySQL uses the operator precedence to determine the order of evaluation of the operators. MySQL evaluates the operator with higher precedence first.

-- -- Since the AND operator has higher precedence than the OR operator, MySQL evaluates the AND operator before the OR operator. For example:

-- SELECT 1 OR 0 AND 0;

-- -- To change the order of evaluation, you use the parentheses. For example:

-- SELECT (1 OR 0) AND 0;

--------------------------------------------------------------------------------------------------------------------------------------

-- -- MySQL OR operator examples

-- -- Let’s use the customers table in the sample database for the demonstration.

-- SELECT    
-- 	customername, 
-- 	country
-- FROM    
-- 	customers
-- WHERE country = 'USA' OR 
--       country = 'France';

-- -- Customers in USA or France with credit limit > 100000 in respective countries
-- SELECT   
-- 	customername, 
-- 	country, 
-- 	creditLimit
-- FROM   
-- 	customers
-- WHERE(country = 'USA'
-- 		OR country = 'France')
-- 	  AND creditlimit > 100000;

-- -- Customers in USA or France with credit limit > 100000
-- SELECT    
--     customername, 
--     country, 
--     creditLimit
-- FROM    
--     customers
-- WHERE 
--     country = 'USA'
--     OR country = 'France'
--     AND creditlimit > 100000;

--------------------------------------------------------------------------------------------------------------------------------------
