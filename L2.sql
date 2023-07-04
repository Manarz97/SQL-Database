
--Using the WHERE Clause

SELECT employee_id, last_name, job_id, department_id FROM employees
WHERE department_id = 90 ;
--Character strings and date values are enclosed with single 
quotation marks.
SELECT last_name, job_id, department_id FROM employees
WHERE last_name = 'Whalen' ;

--The default date display format is DD-MON-RR.
SELECT last_name FROM employees
WHERE hire_date = '17-FEB-96' ;
--Using Comparison Operators
SELECT last_name, salary FROM employees
WHERE salary <= 3000 ;
--use the BETWEEN operator to display rows based on a range of values
SELECT last_name, salary FROM employees
WHERE salary BETWEEN 2500 AND 3500 ;
--Use the IN operator to test for values
SELECT employee_id, last_name, salary, manager_id FROM employees
WHERE manager_id IN (100, 101, 201) ;
--Use the LIKE operator to perform wildcard searches of valid search string values
SELECT first_name FROM employees
WHERE first_name LIKE 'S%' ;
---You can combine the two wildcard characters (%, _) with literal characters for pattern matching
SELECT last_name FROM employees
WHERE last_name LIKE '_o%' ;

--Using the NULL Conditions
SELECT last_name, manager_id FROM employees
WHERE manager_id IS NULL ;
--using "and" requires both the component conditions to be true
SELECT employee_id, last_name, job_id, salary FROM employees
WHERE salary >= 10000 AND job_id LIKE '%MAN%' ;
--using OR requires either component condition to be true
SELECT employee_id, last_name, job_id, salary
FROM employees WHERE salary >= 10000
OR job_id LIKE '%MAN%' ;
-- using not opreator
SELECT last_name, job_id
FROM employees WHERE job_id 
NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP') ;
--Using the ORDER BY Clause
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date ;
--Sorting in descending order
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC ; 
--Sorting by column alias
SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal ;
-- Sorting by using the column’s numeric position:
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 3; 
-- Sorting by multiple columns:
SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary DESC; 

--Use single quotation marks for date and character values
SELECT last_name, department_id, salary*12
FROM employees
WHERE job_id = '&job_title' ;

SELECT employee_id, last_name, job_id,&column_name
FROM employees
WHERE &condition
ORDER BY &order_column ;
--Use double ampersand (&&) if you want to reuse the variable value without prompting the user each time

SELECT employee_id, last_name, job_id, &&column_name
FROM employees
ORDER BY &column_name ;

--Using the DEFINE Command
--Use the DEFINE command to create and assign a value to a variable.
DEFINE employee_num = 200
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_num ;
UNDEFINE employee_num
---Use the VERIFY command to toggle the display of the substitution variable, before and after SQL Developer replaces substitution variables with values
SET VERIFY ON
SELECT employee_id, last_name, salary
FROM employees
WHERE employee_id = &employee_num;













