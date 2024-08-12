/*
  Medium > Question 01

  Show unique birth years from patients and order them by ascending.
*/

SELECT
  DISTINCT(year(birth_date)) AS birth_date
FROM patients
ORDER BY birth_date;

/*
SELECT year(birth_date)
FROM patients
GROUP BY year(birth_date);
*/
