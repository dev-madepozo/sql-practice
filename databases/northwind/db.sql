DROP TABLE IF EXISTS northwind;

CREATE DATABASE northwind;

USE northwind;

DROP TABLE IF EXISTS categories;

CREATE TABLE categories(
  category_id CHAR(2) NOT NULL,
  category_name VARCHAR(30) NOT NULL,
  description VARCHAR(100) NOT NULL,
  PRIMARY KEY (category_id)
);

DROP TABLE IF EXISTS customers;

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

DROP TABLE IF EXISTS regions;

CREATE TABLE regions(
  region_id INT NOT NULL AUTO_INCREMENT,
  region_description VARCHAR(30) NOT NULL,
  PRIMARY KEY (region_id)
);

DROP TABLE IF EXISTS territories;

CREATE TABLE territories(
  territory_id CHAR(5) NOT NULL,
  territory_description VARCHAR(30) NOT NULL,
  region_id INT NOT NULL,
  PRIMARY KEY (territory_id),
  FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

DROP TABLE IF EXISTS shippers;

CREATE TABLE shippers(
  shipper_id INT NOT NULL AUTO_INCREMENT,
  company_name VARCHAR(30) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  PRIMARY KEY (shipper_id)
);

DROP TABLE IF EXISTS employees;

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

DROP TABLE IF EXISTS employee_territories;

CREATE TABLE employee_territories(
  employee_id INT NOT NULL,
  territory_id CHAR(5) NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  FOREIGN KEY (territory_id) REFERENCES territories(territory_id)
);

DROP TABLE IF EXISTS orders;

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

DROP TABLE IF EXISTS suppliers;

CREATE TABLE suppliers(
  supplier_id VARCHAR(5) NOT NULL,
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
