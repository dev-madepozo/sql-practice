/*
  Ease > Question 08

  Show how many patients have a birth_date with 2010 as the birth year.
*/

SELECT
  count(patient_id) AS total_patients
FROM patients
WHERE year(birth_date) = 2010;
-- WHERE birth_date BETWEEN '2010-01-01' AND '2010-12-31'
-- WHERE birth_date >= '2010-01-01' AND  birth_date <= '2010-12-31'
