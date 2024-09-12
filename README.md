# SQL-Practice

In this repository, you will find the solution for all the exercises on the [sql-practice](https://www.sql-practice.com/) page.

## Table of Contents

1. [Getting started](#getting-started)
2. [Folder Structure](#folder-structure)
3. [How to use](#how-to-use)
4. [Congratulations](#congratulations)

## Getting Started

In case you want to practice on your local machine, I created the scripts to create both databases with their tables and populate them with the data used by the website. Then you will get the same result when you run your solutions.

__Note__: These solutions were written and tested in a MySQL engine.

## Folder Structure

##### Databases

- In this folder you can find two sub-folders named **hospital** and **northwind** which are names of the two databases used on the website. Inside each folder there are the scripts to create the databases and their tables. Additionally the scripts to insert the data in each table.

##### Questions

- In this folder, you can find the solutions for all exercises organized by levels: `easy`, `medium` and `hard`. According to the webpage.

## How to use

Open the terminal and go to the root directory of this repository, then run the following commands to have your database ready to practice on your local.

#### First we need to connect to mysql
  ```console
  mysql -u root -p
  ```

  #### Execute the scripts

  Run this command to create the `hospital` database
  ```console
  SET autocommit=0; source ./databases/hospital/schema.sql; COMMIT;
  ```

  Do the same to create the `northwind` database.

  ```console
  SET autocommit=0; source ./databases/northwind/schema.sql; COMMIT;
  ```

### Congratulations!

You're ready to practice on your own computer, I hope you enjoy learning SQL like I did, and feel free to reach out in case you need help or want to contribute to this repository.
