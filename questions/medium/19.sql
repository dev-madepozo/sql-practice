/*
  Medium > Question 19

  Show first_name, last_name, and the total number of admissions attended for each doctor.
  Every admission has been attended by a doctor.
*/

SELECT
  first_name, last_name, count(*) AS total_admissions
FROM doctors
JOIN admissions
ON admissions.attending_doctor_id = doctors.doctor_id
GROUP BY attending_doctor_id;


/*
  SELECT
    first_name, last_name, count(*)
  FROM
    doctors p,
    admissions a
  WHERE
    a.attending_doctor_id = p.doctor_id
  GROUP BY p.doctor_id;
*/
