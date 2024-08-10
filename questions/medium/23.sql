/*
  Medium > Question 23

  display the first name, last name and number of duplicate patients based on their first name and last name.
  Ex: A patient with an identical name can be considered a duplicate.
*/

SELECT
  first_name,
  last_name,
  count(*) AS num_of_duplicates
FROM patients
GROUP BY first_name, last_name
HAVING num_of_duplicates > 1;
