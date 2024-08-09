/*
  Ease > Question 14

  Based on the cities that our patients live in, show unique cities that are in province_id 'NS'?
*/

SELECT
  DISTINCT(city) AS unique_city
FROM patients
WHERE province_id = 'NS';

/*
SELECT city
FROM patients
GROUP BY city
HAVING province_id = 'NS';
*/
