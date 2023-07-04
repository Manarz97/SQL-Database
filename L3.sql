--Using Case-Conversion Functions
SELECT employee_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'king';


select * from employees;

--Using the Character-Manipulation Functions
SELECT employee_id, CONCAT(first_name, last_name) NAME, 
job_id, LENGTH (last_name), 
INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(job_id, 4) = 'REP';

--Using the ROUND Function
SELECT ROUND(45.923,2), ROUND(45.923,0),
ROUND(45.923,-1)
FROM DUAL;

--Using the TRUNC Function
SELECT TRUNC(45.923,2), TRUNC(45.923),
TRUNC(45.923,-1)
FROM DUAL;

--Using the MOD Function
SELECT last_name, salary, MOD(salary, 5000)
FROM employees
WHERE job_id = 'SA_REP';

SELECT last_name, hire_date
FROM employees
WHERE hire_date < '01-FEB-88';

--Using the SYSDATE Function
SELECT sysdate
FROM dual;

 --Using Arithmetic Operators with Dates

SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS
FROM employees
WHERE department_id = 90;






