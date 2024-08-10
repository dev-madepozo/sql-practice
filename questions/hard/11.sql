/*
  Hard > Question 11

  We need a breakdown for the total amount of admissions each doctor has started each year.
  Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.
*/

SELECT
  doctors.doctor_id,
  concat(first_name, ' ', last_name) AS doctor_name,
  specialty,
  year(admission_date) AS selected_year,
  count(*) AS total_admissions
FROM doctors
JOIN admissions
ON doctors.doctor_id = admissions.attending_doctor_id
GROUP BY doctor_id, selected_year
ORDER BY doctor_id, selected_year;
