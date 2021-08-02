-- -- USING DATABASE FROM 'mysqlsampledatabase.sql'


-- --  The SELECT statement allows you to select data from one or more tables. To write a SELECT statement in MySQL, you use this syntax:
-- --  SELECT select_list FROM table_name;
-- select lastName from employees;
-- SELECT lastName, firstName, jobTitle FROM employees;

-- -- ALTERNATE USE OF SELECT STATEMENTS
-- SELECT 1 + 1;
-- SELECT NOW();
-- SELECT CONCAT('John',' ','Doe');

-- -- Sometimes, you still need to use the FROM clause but you don’t want to reference any actual table. In this case, you can use the dual table in the FROM clause:
-- SELECT select_list FROM dual;

-- -- A quick introduction to the column alias

-- -- By default, MySQL uses the expression specified in the SELECT clause as the column name of the result set. To change a column name of the result set, you can use a column alias:

-- SELECT expression AS column_alias;

-- -- To assign an alias to a column, you place the AS keyword after the expression followed by a column alias. The AS keyword is optional, so you can skip it like this:

-- SELECT expression column_alias;

-- -- If the column alias contains spaces, you need to place it inside quotes like this:
-- SELECT CONCAT('Jane',' ','Doe') AS 'Full name';

-- Introduction to the MySQL ORDER BY clause

-- When you use the SELECT statement to query data from a table, the order of rows in the result set is unspecified. To sort the rows in the result set, you add the ORDER BY clause to the SELECT statement.

-- -- The following illustrates the syntax of the ORDER BY clause:
-- -- SELECT select_list FROM table_name ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;

-- SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname;

-- SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname DESC;

-- -- Using MySQL ORDER BY clause to sort a result set by an expression example
-- SELECT orderNumber, orderlinenumber, quantityOrdered * priceEach FROM orderdetails ORDER BY quantityOrdered * priceEach DESC;

