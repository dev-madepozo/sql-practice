/*
  Medium > Question 16

  Show all of the days of the month (1-31) and how many admission_dates occurred on that day.
  Sort by the day with most admissions to least admissions.
*/

SELECT
  day(admission_date) AS day_number,
  count(*) AS number_of_admissions
FROM admissions
GROUP BY day_number
ORDER BY number_of_admissions DESC;
