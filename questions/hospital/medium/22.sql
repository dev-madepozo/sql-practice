/*
  Medium > Question 22

  For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
*/

SELECT
  concat(pa.first_name, ' ', pa.last_name) AS patient_name,
  ad.diagnosis,
  concat(do.first_name, ' ', do.last_name) AS doctor_name
FROM patients AS pa
JOIN admissions AS ad
ON pa.patient_id = ad.patient_id
JOIN doctors AS do
ON ad.attending_doctor_id = do.doctor_id;
