/*
  Medium > Question 04

  Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
  Primary diagnosis is stored in the admissions table.
*/

SELECT pa.patient_id, pa.first_name, pa.last_name
FROM patients AS pa
JOIN admissions AS ad
ON pa.patient_id = ad.patient_id
WHERE ad.diagnosis = 'Dementia';

/*
SELECT
  patient_id, first_name, last_name
FROM patients
WHERE patient_id IN (
  SELECT
    patient_id
  FROM admissions
  WHERE diagnosis = 'Dementia'
);
*/
