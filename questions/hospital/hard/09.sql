/*
  Hard > Question 09

  For each day display the total amount of admissions on that day.
  Display the amount changed from the previous date.
*/

SELECT
  admission_date,
  count(*) AS admission_day,
  count(*) - lag(count(*), 1) OVER (ORDER BY admission_date ASC) AS admission_count_change
FROM admissions
GROUP BY admission_date
ORDER BY admission_date;
