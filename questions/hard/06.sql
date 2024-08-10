/*
  Hard > Question 06

  Show the provinces that has more patients identified as 'M' than 'F'.
  Must only show full province_name
*/

SELECT
  province_name
FROM province_names
JOIN patients
ON province_names.province_id = patients.province_id
GROUP BY province_name
HAVING sum(patients.gender = 'M') > sum(patients.gender = 'F');
