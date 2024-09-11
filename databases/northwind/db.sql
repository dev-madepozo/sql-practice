-- Create the database
CREATE DATABASE IF NOT EXISTS northwind;

-- Switch to the northwind database
USE northwind;

-- Drop existing tables
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS regions;
DROP TABLE IF EXISTS territories;
DROP TABLE IF EXISTS shippers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS employee_territories;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS order_details;

-- Create the tables

CREATE TABLE categories(
  category_id INT NOT NULL,
  category_name VARCHAR(30) NOT NULL,
  description VARCHAR(100) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE customers(
  customer_id VARCHAR(5) NOT NULL,
  company_name VARCHAR(50) NOT NULL,
  contact_name VARCHAR(50) NOT NULL,
  contact_title VARCHAR(50) NOT NULL,
  address VARCHAR(50) NULL,
  city VARCHAR(25) NULL,
  region VARCHAR(25) NULL,
  postal_code VARCHAR(10) NULL,
  country VARCHAR(25) NULL,
  phone VARCHAR(25) NULL,
  fax VARCHAR(25) NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE suppliers(
  supplier_id INT NOT NULL AUTO_INCREMENT,
  company_name VARCHAR(50) NOT NULL,
  contact_name VARCHAR(50) NOT NULL,
  contact_title VARCHAR(50) NOT NULL,
  address VARCHAR(50) NULL,
  city VARCHAR(25) NULL,
  region VARCHAR(25) NULL,
  postal_code VARCHAR(10) NULL,
  country VARCHAR(25) NULL,
  phone VARCHAR(25) NULL,
  fax VARCHAR(25) NULL,
  home_page VARCHAR(100) NULL,
  PRIMARY KEY (supplier_id)
);

CREATE TABLE products(
  product_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(50) NOT NULL,
  supplier_id INT NOT NULL,
  category_id INT NOT NULL,
  quantity_per_unit VARCHAR(25) NOT NULL,
  unit_price DECIMAL(10, 2) NOT NULL,
  units_in_stock INT NOT NULL DEFAULT 0,
  units_on_order INT NOT NULL DEFAULT 0,
  reorder_level INT NOT NULL DEFAULT 0,
  discontinued INT NOT NULL DEFAULT 0,
  PRIMARY KEY (product_id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE regions(
  region_id INT NOT NULL AUTO_INCREMENT,
  region_description VARCHAR(30) NOT NULL,
  PRIMARY KEY (region_id)
);

CREATE TABLE territories(
  territory_id CHAR(5) NOT NULL,
  territory_description VARCHAR(30) NOT NULL,
  region_id INT NOT NULL,
  PRIMARY KEY (territory_id),
  FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

CREATE TABLE shippers(
  shipper_id INT NOT NULL AUTO_INCREMENT,
  company_name VARCHAR(30) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  PRIMARY KEY (shipper_id)
);

CREATE TABLE employees(
  employee_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  title VARCHAR(30) NOT NULL,
  title_of_courtesy VARCHAR(5) NOT NULL,
  birth_date DATE NOT NULL,
  hire_date DATE NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(25) NOT NULL,
  region VARCHAR(25) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  country VARCHAR(25) NOT NULL,
  phone VARCHAR(25) NOT NULL,
  extension VARCHAR(10) NOT NULL,
  reports_to INT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (reports_to) REFERENCES employees(employee_id)
);

CREATE TABLE employee_territories(
  employee_id INT NOT NULL,
  territory_id CHAR(5) NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  FOREIGN KEY (territory_id) REFERENCES territories(territory_id)
);

CREATE TABLE orders(
  order_id INT NOT NULL AUTO_INCREMENT,
  customer_id VARCHAR(5) NOT NULL,
  employee_id INT NOT NULL,
  order_date DATE NOT NULL,
  required_date DATE NOT NULL,
  shipped_date DATE NULL,
  ship_via INT NOT NULL,
  freight DECIMAL(10,2) NOT NULL,
  ship_name VARCHAR(50) NOT NULL,
  ship_address VARCHAR(50) NOT NULL,
  ship_city VARCHAR(25) NOT NULL,
  ship_region VARCHAR(15) NULL,
  ship_postal_code VARCHAR(10) NULL,
  ship_country VARCHAR(25) NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  FOREIGN KEY (ship_via) REFERENCES shippers(shipper_id)
);

CREATE TABLE order_details(
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  discount DECIMAL(10,2) DEFAULT 0,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert data

INSERT INTO categories(category_id, category_name, description) VALUES (1,"Beverages","Soft drinks, coffees, teas, beers, and ales"),(2,"Condiments","Sweet and savory sauces, relishes, spreads, and seasonings"),(3,"Confections","Desserts, candies, and sweet breads"),(4,"Dairy Products","Cheeses"),(5,"Grains/Cereals","Breads, crackers, pasta, and cereal"),(6,"Meat/Poultry","Prepared meats"),(7,"Produce","Dried fruit and bean curd"),(8,"Seafood","Seaweed and fish");

