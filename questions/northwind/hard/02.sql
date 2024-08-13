/*
  Hard > Question 02

  Show how much money the company lost due to giving discounts each year, order the years
  from most recent to least recent. Round to 2 decimal places
*/

SELECT
  year(order_date) AS order_year,
  round(sum(unit_price * discount * quantity), 2) AS discount_amount
FROM orders
JOIN order_details
ON orders.order_id = order_details.order_id
JOIN products
ON order_details.product_id = products.product_id
GROUP BY order_year
ORDER BY order_year DESC;
