/*
  Ease > Question 08

  Show the first_name, last_name. hire_date of the most recently hired employee.
*/

SELECT
  first_name, last_name, max(hire_date) AS hire_date
FROM employees;

/*
SELECT
  first_name, last_name, hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 1;
*/
