/*
  Ease > Question 06

  Show first name and last name concatinated into one column to show their full name.
*/

SELECT
  concat(first_name, ' ', last_name) AS full_name
FROM patients;
