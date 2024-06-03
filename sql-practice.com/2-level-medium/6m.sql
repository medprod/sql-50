SELECT
SUM(CASE WHEN gender='M' THEN 1 ELSE 0 END) AS male_count,
sum(CASE WHEN gender='F' THEN 1 ELSE 0 END) AS female_count
FROM patients