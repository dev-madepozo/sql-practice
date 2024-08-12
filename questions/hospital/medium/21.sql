/*
  Medium > Question 21

  Display the total amount of patients for each province. Order by descending.
*/

SELECT
  province_name,
  count(*) AS patient_count
FROM province_names
JOIN patients
ON province_names.province_id = patients.province_id
GROUP BY province_name
ORDER BY patient_count DESC;
