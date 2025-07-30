1.
  SELECT 
  SUBSTRING_INDEX(Name, ',', 1) AS Name,
  TRIM(SUBSTRING_INDEX(Name, ',', -1)) AS Surname
FROM TestMultipleColumns;
2.
SELECT *
FROM TestPercent
WHERE column_name LIKE '%\%%' ESCAPE '\';
3.
-- Example using MySQL and assuming a column `val`
SELECT 
  SUBSTRING_INDEX(val, '.', 1) AS part1,
  SUBSTRING_INDEX(SUBSTRING_INDEX(val, '.', 2), '.', -1) AS part2,
  SUBSTRING_INDEX(val, '.', -1) AS part3
FROM Splitter;
4. 
SELECT REGEXP_REPLACE('1234ABC123456XYZ1234567890ADS', '[0-9]', 'X') AS result;
5.
SELECT *
FROM testDots
WHERE LENGTH(Vals) - LENGTH(REPLACE(Vals, '.', '')) > 2;
6.
SELECT LENGTH(my_string) - LENGTH(REPLACE(my_string, ' ', '')) AS space_count
FROM CountSpaces;
7.
SELECT E.*
FROM Employee E
JOIN Employee M ON E.manager_id = M.id
WHERE E.salary > M.salary;
8.
SELECT 
  REGEXP_REPLACE('rtcfvty34redt', '[^0-9]', '') AS numbers,
  REGEXP_REPLACE('rtcfvty34redt', '[0-9]', '') AS letters;
9.
SELECT w1.id
FROM weather w1
JOIN weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
10.
SELECT player_id, MIN(login_date) AS first_login
FROM Activity
GROUP BY player_id;
11.
SELECT 
  SUBSTRING_INDEX(SUBSTRING_INDEX(fruits_column, ',', 3), ',', -1) AS third_item
FROM fruits;
12.
-- Assuming MySQL 8.0+ and a variable string
WITH RECURSIVE chars AS (
  SELECT 1 AS pos
  UNION ALL
  SELECT pos + 1 FROM chars WHERE pos < LENGTH('sdgfhsdgfhs@121313131')
)
SELECT SUBSTRING('sdgfhsdgfhs@121313131', pos, 1) AS character
FROM chars;
13.
SELECT 
  p1.id,
  CASE WHEN p1.code = 0 THEN p2.code ELSE p1.code END AS final_code
FROM p1
JOIN p2 ON p1.id = p2.id;
14.
SELECT 
  p1.id,
  CASE WHEN p1.code = 0 THEN p2.code ELSE p1.code END AS final_code
FROM p1
JOIN p2 ON p1.id = p2.id;
15.
SELECT employee_id, first_name, hire_date,
  CASE
    WHEN TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) < 1 THEN 'New Hire'
    WHEN TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) BETWEEN 1 AND 5 THEN 'Junior'
    WHEN TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) BETWEEN 6 AND 10 THEN 'Mid-Level'
    WHEN TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) BETWEEN 11 AND 20 THEN 'Senior'
    ELSE 'Veteran'
  END AS employment_stage
FROM Employees;

