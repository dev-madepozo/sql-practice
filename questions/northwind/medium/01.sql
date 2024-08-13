/*
  Medium > Question 01

  Show the ProductName, CompanyName, CategoryName from the products,
  suppliers, and categories table
*/

SELECT
  product_name, company_name, category_name
FROM products
JOIN categories
ON products.category_id = categories.category_id
JOIN suppliers
ON products.supplier_id = suppliers.supplier_id;
