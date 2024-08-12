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
  customer_name VARCHAR(50) NOT NULL,
  contact_name VARCHAR(50) NOT NULL,
  contact_title VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(25) NOT NULL,
  region VARCHAR(25) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  country VARCHAR(25) NOT NULL,
  phone VARCHAR(25) NOT NULL,
  fax VARCHAR(25) NOT NULL,
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
