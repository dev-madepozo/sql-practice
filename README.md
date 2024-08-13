# SQL-Practice

- In this repository, you will find the solution for all the exercises on the [sql-practice](https://www.sql-practice.com/) page.

- In case you want to practice on your local machine, I created the scripts to create both databases with their tables and populate them with the data used by the website. Then you will get the same result when you run your solutions.

- __Note__: These solutions were written and tested in a MySQL engine.

## Folder structure

##### Databases

- In this folder you can find two sub-folders named **hospital** and **northwind** which are names of the two databases used on the website. Inside each folder there are the scripts to create the databases and their tables. Additionally the scripts to insert the data in each table.

##### Questions

- In this folder, you can find the solutions for all exercises organized by levels: `easy`, `medium` and `hard`. According to the webpage.

## How to use

Open the terminal and go to the root directory of this repository, then run the following commands to have your database ready to practice on your local.

#### First we need to connect to mysql
  ```bash
  mysql -u root -p
  ```

  #### Execute the scripts

  - Run this command to create the `hospital` database

  ```sql
  source ./databases/hospital/db.sql
  ```

  - Once you've created the database, now run these commands to insert data for each table **[make sure to do it in the same order]**;

  ```sql
  source ./databases/hospital/doctors.sql
  source ./databases/hospital/province_names.sql
  source ./databases/hospital/patients.sql
  source ./databases/hospital/admissions.sql
  ```

  - Do the same to create the `northwind` database.

  ```sql
  source ./databases/northwind/db.sql
  ```

  ```sql
  source ./databases/northwind/categories.sql
  source ./databases/northwind/customers.sql
  source ./databases/northwind/suppliers.sql
  source ./databases/northwind/products.sql
  source ./databases/northwind/regions.sql
  source ./databases/northwind/territories.sql
  source ./databases/northwind/shippers.sql
  source ./databases/northwind/employees.sql
  source ./databases/northwind/employee_territories.sql
  source ./databases/northwind/orders.sql
  source ./databases/northwind/order_details.sql
  ```

### Congratulations!

You're ready to practice on your own computer, I hope you enjoy learning SQL like I did, and feel free to reach out in case you need help or want to contribute to this repository.
