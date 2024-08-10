/*
  Hard > Question 03

  Show patient_id, first_name, last_name, and attending doctor's specialty.
  Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'

  Check patients, admissions, and doctors tables for required information.
*/

SELECT
  pa.patient_id, pa.first_name, pa.last_name,
  do.specialty
FROM patients AS pa
JOIN admissions AS ad
ON pa.patient_id = ad.patient_id
JOIN doctors AS do
ON do.doctor_id = ad.attending_doctor_id
WHERE ad.diagnosis = 'Epilepsy' AND do.first_name = 'Lisa';
