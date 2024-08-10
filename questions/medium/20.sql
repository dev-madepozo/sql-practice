/*
  Medium > Question 20

  For each doctor, display their id, full name, and the first and last admission date they attended.
*/

SELECT
  doctor_id,
  concat(first_name, ' ', last_name) AS full_name,
  min(admission_date) AS first_admission_date,
  max(admission_date) AS last_admission_date
FROM doctors
JOIN admissions
ON admissions.attending_doctor_id = doctors.doctor_id
GROUP BY attending_doctor_id;
