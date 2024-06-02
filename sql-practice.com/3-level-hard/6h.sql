-- Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name

WITH CTE AS
(SELECT p.gender, p.province_id, pr.province_id, pr.province_name,
 SUM(case when gender = 'M' THEN 1 ELSE 0 end) AS male_count,
 SUM(case when gender = 'F' THEN 1 ELSE 0 end) AS female_count
 FROM patients p 
 JOIN province_names pr 
 ON p.province_id = pr.province_id
 GROUP BY pr.province_name)

SELECT province_name FROM CTE
WHERE male_count > female_count