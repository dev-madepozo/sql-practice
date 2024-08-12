/*
  Medium > Question 11

  Show all allergies ordered by popularity.
  Remove NULL values from query.
*/

SELECT allergies, count(*) AS total_diagnosis
FROM patients
GROUP BY allergies
HAVING allergies IS NOT NULL
ORDER BY total_diagnosis DESC;
