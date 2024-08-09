/*
  Ease > Question 07

  Show first name, last name, and the full province name of each patient.
  Example: 'Ontario' instead of 'ON'
*/

SELECT
  first_name, last_name, province_name
FROM patients
INNER JOIN province_names
ON patients.province_id = province_names.province_id;
