 --Using the TO_CHAR Function with Dates

SELECT last_name,TO_CHAR(hire_date, 'fmDD Month YYYY')
AS HIREDATE FROM employees;

--Using the TO_CHAR Function with Dates
SELECT TO_CHAR(salary, '$99,999.00') SALARY
FROM employees WHERE last_name = 'Ernst';

--Using the TO_CHAR and TO_DATE Function with RR Date Format
SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-YYYY')
FROM employees
WHERE hire_date < TO_DATE('01-Jan-90','DD-Mon-RR');

---Nested functions are evaluated from the deepest level to the least deep level.
SELECT last_name,
UPPER(CONCAT(SUBSTR (LAST_NAME, 1, 8), '_US'))
FROM employees
WHERE department_id = 60;

--Using the NVL Function
SELECT last_name, salary, NVL(commission_pct, 0),
(salary*12) + (salary*12*NVL(commission_pct, 0)) AN_SAL
FROM employees;

--Using the NVL2 Function
SELECT last_name, salary, commission_pct,
NVL2(commission_pct, 
'SAL+COMM', 'SAL') income
FROM employees WHERE department_id IN (50, 80);

--Using the NULLIF Function
SELECT first_name, LENGTH(first_name) "expr1", 
last_name, LENGTH(last_name) "expr2",
NULLIF(LENGTH(first_name), LENGTH(last_name)) result
FROM employees;

--Using the COALESCE Function
SELECT last_name, employee_id,
COALESCE(TO_CHAR(commission_pct),TO_CHAR(manager_id),
'No commission and no manager') 
FROM employees;

--Using the CASE Expression
SELECT last_name, job_id, salary,
CASE job_id WHEN 'IT_PROG' THEN 1.10*salary
WHEN 'ST_CLERK' THEN 1.15*salary
WHEN 'SA_REP' THEN 1.20*salary
ELSE salary END "REVISED_SALARY"
FROM employees;

--Using the DECODE Function
SELECT last_name, job_id, salary,
DECODE(job_id, 'IT_PROG', 1.10*salary,
'ST_CLERK', 1.15*salary,
'SA_REP', 1.20*salary,
salary)
REVISED_SALARY
FROM employees;



