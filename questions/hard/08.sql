/*
  Hard > Question 08

  Show the percent of patients that have 'M' as their gender.
  Round the answer to the nearest hundreth number and in percent form.
*/

SELECT
  concat(
    round(sum(gender='M') * 100.00 / count(*), 2),'%'
  ) AS percent_of_male_patients
FROM patients;
