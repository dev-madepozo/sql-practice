/*
  Medium > Question 05

  Display every patient's first_name.
  Order the list by the length of each name and then by alphabetically.
*/

SELECT first_name
FROM patients
ORDER BY LENGTH(first_name), first_name;
