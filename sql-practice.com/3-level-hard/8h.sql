
-- For each day display the total amount of admissions on that day. Display the amount changed from the previous date.

WITH CTE AS(SELECT admission_date,
COUNT(patient_id) AS admission_day,
LAG(COUNT(patient_id)) OVER(order by admission_date) AS prev_admission
FROM admissions
GROUP BY admission_date)

SELECT admission_date, admission_day,
(admission_day - prev_admission) AS adm_count_change
FROM CTE
ORDER BY admission_date