/*
  Medium > Question 08

  Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
*/

SELECT
  patient_id, diagnosis
FROM admissions
GROUP BY patient_id, diagnosis
HAVING count(*) > 1;
