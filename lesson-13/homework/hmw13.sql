
SELECT CONCAT(emp_id, '-', first_name, ' ', last_name) AS emp_info
FROM employees
WHERE emp_id = 100;
2.
UPDATE employees
SET phone_number = REPLACE(phone_number, '124', '999');
3.
SELECT first_name AS "First Name", 
       LENGTH(first_name) AS "Name Length"
FROM employees
WHERE first_name LIKE 'A%' OR first_name LIKE 'J%' OR first_name LIKE 'M%'
ORDER BY first_name;
4.
SELECT manager_id, SUM(salary) AS total_salary
FROM employees
GROUP BY manager_id;
5.
SELECT year, GREATEST(Max1, Max2, Max3) AS max_value
FROM TestMax;
6.
SELECT *
FROM cinema
WHERE id % 2 = 1 AND description <> 'boring';
7.
SELECT *
FROM SingleOrder
ORDER BY (id = 0), id;
8.
SELECT COALESCE(col1, col2, col3, col4) AS first_non_null
FROM person;
9.
SELECT
  SUBSTRING_INDEX(FullName, ' ', 1) AS FirstName,
  SUBSTRING_INDEX(SUBSTRING_INDEX(FullName, ' ', -2), ' ', 1) AS MiddleName,
  SUBSTRING_INDEX(FullName, ' ', -1) AS LastName
FROM Students;
10.
SELECT *
FROM Orders
WHERE state = 'Texas'
  AND customer_id IN (
    SELECT customer_id FROM Orders WHERE state = 'California'
  );
12.
SELECT *
FROM employees
WHERE LENGTH(CONCAT(first_name, last_name)) - LENGTH(REPLACE(LOWER(CONCAT(first_name, last_name)), 'a', '')) >= 3;
13.
SELECT department_id,
       COUNT(*) AS total_employees,
       ROUND(SUM(CASE WHEN DATEDIFF(CURDATE(), hire_date) > 1095 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS percent_over_3_years
FROM employees
GROUP BY department_id;
14.
SELECT job_description,
       MIN(experience_years) AS least_experience,
       MAX(experience_years) AS most_experience
FROM Personal
WHERE job_title = 'Spaceman'
GROUP BY job_description;
16.
SELECT id, value, 
       SUM(value) OVER (ORDER BY id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM Students;
17.
SELECT id, equation,
       ROUND(EVAL(equation), 2) AS result -- Replace EVAL with your DB-compatible expression parser
FROM Equations;
18.
SELECT birthday
FROM Student
GROUP BY birthday
HAVING COUNT(*) > 1;
19.
SELECT 
  LEAST(player_a, player_b) AS player1,
  GREATEST(player_a, player_b) AS player2,
  SUM(score) AS total_score
FROM PlayerScores
GROUP BY LEAST(player_a, player_b), GREATEST(player_a, player_b);
