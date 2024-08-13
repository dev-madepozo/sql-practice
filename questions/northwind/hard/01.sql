/*
  Hard > Question 01

  Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken,
  and a column called "Shipped" that displays "On Time" if the order shipped_date is less or equal
  to the required_date, "Late" if the order shipped late.

  Order by employee last_name, then by first_name, and then descending by number of orders.
*/

SELECT
  first_name,
  last_name,
  count(*) AS num_orders,
  CASE
    WHEN shipped_date <= required_date THEN 'On Time' ELSE 'Late'
  END AS shipped
FROM employees
JOIN orders
ON employees.employee_id = orders.employee_id
GROUP BY orders.employee_id, shipped
ORDER BY last_name, first_name, num_orders DESC;
