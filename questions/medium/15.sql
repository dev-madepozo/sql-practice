/*
  Medium > Question 15

  Show the difference between the largest weight and smallest weight
  for patients with the last name 'Maroni'
*/

SELECT
  (max(weight) - min(weight)) AS delta_weight
FROM patients
WHERE last_name = 'Maroni';
