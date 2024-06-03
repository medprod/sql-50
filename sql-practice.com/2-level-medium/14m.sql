SELECT province_id, SUM(height) as total
FROM patients
GROUP BY province_id
HAVING total >= 7000