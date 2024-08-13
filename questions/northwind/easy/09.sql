/*
  Ease > Question 09

  Show the average unit price rounded to 2 decimal places, the total units in stock,
  total discontinued products from the products table.
*/

SELECT
  round(avg(unit_price), 2) AS average_price,
  sum(units_in_stock) AS total_stock,
  sum(discontinued) AS total_discontinued
FROM products;
