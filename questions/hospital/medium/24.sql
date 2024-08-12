/*
  Medium > Question 24

  Display patient's full name, height in the units feet rounded to 1 decimal,
  weight in the unit pounds rounded to 0 decimals, birth_date, gender non abbreviated.

  Convert CM to feet by dividing by 30.48.
  Convert KG to pounds by multiplying by 2.205.
*/

SELECT
  concat(first_name, ' ', last_name) AS patient_name,
  round(height / 30.48, 1) AS 'height "Feet"',
  birth_date,
  round(weight * 2.205, 0) AS 'weight "Pounds"',
  CASE
    WHEN gender = 'M' THEN 'MALE' ELSE 'FEMALE'
  END AS gender_type
FROM patients;
