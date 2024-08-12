/*
  Medium > Question 25

  Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table.
  (Their patient_id does not exist in any admissions.patient_id rows.)
*/

SELECT
  pa.patient_id, pa.first_name, pa.last_name
FROM patients AS pa
LEFT JOIN admissions AS Ad
ON pa.patient_id = ad.patient_id
WHERE ad.patient_id IS NULL;

/*
  SELECT
    patient_id, first_name, last_name
  FROM patients
  WHERE patient_id NOT IN (
    SELECT patient_id FROM admissions
  );
*/
