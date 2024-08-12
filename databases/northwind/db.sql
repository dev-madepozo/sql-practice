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
