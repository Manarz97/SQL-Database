
---Selecting All Columns

select * from employees

SELECT first_name,last_name
FROM employees;
--Selecting Specific Columns
SELECT department_id, location_id FROM departments;
--Using Arithmetic Operators
SELECT last_name, salary, salary + 300
FROM employees;

SELECT last_name, salary, 12*salary+100
FROM employees;

SELECT last_name, job_id, salary, commission_pct
FROM employees;

---Arithmetic expressions containing a null value evaluate to null.

SELECT last_name, 12*salary*commission_pct
FROM employees;

SELECT last_name AS name, commission_pct comm
FROM employees;

---Using Column Aliases

SELECT last_name "Name" , salary*12 "Annual Salary"
FROM employees;

--Concatenation Operator
SELECT last_name||job_id AS "Employees"
FROM employees;

--Using Literal Character Strings
SELECT last_name ||' is a '||job_id AS "Employee Details"
FROM employees;

--Alternative Quote (q) Operator
SELECT department_name || q'[ Department's Manager Id: ]'|| manager_id 
AS "Department and Manager" FROM departments;

--Duplicate Rows.
SELECT DISTINCT department_id
FROM employees;






