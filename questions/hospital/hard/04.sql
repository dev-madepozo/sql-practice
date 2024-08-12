/*
  Hard > Question 04

  All patients who have gone through admissions, can see their medical documents on our site.
  Those patients are given a temporary password after their first admission.
  Show the patient_id and temp_password.
  
  The password must be the following, in order:
  1. patient_id
  2. the numerical length of patient's last_name
  3. year of patient's birth_date
*/

SELECT
  DISTINCT pa.patient_id,
  concat(pa.patient_id, length(pa.last_name), year(pa.birth_date)) AS temp_password
FROM patients AS pa
JOIN admissions AS ad
ON pa.patient_id = ad.patient_id

/*
  SELECT
    pa.patient_id,
    concat(pa.patient_id, length(pa.last_name), year(pa.birth_date)) AS temp_password
  FROM patients AS pa
  JOIN admissions AS ad
  ON pa.patient_id = ad.patient_id
  GROUP BY pa.patient_id;
*/
