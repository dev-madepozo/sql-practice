/*
  Medium > Question 06

  Show the total amount of male patients and the total amount of female patients in the patients table.
  Display the two results in the same row.
*/

SELECT
  sum(gender = 'M') AS male_count,
  sum(gender = 'F') AS female_count
FROM patients;

/*
  SELECT
    (SELECT count(*) FROM patients WHERE gender = 'M') AS male_count,
    (SELECT count(*) FROM patients WHERE gender = 'F') AS female_count;
*/
