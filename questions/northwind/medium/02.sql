/*
  Medium > Question 02

  Show the category_name and the average product unit price
  for each category rounded to 2 decimal places.
*/

SELECT
  category_name,
  round(avg(unit_price), 2) AS average_unit_price
FROM products
JOIN categories
ON products.category_id = categories.category_id
GROUP BY category_name;
