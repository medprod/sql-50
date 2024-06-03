SELECT allergies,  COUNT(allergies) AS total
FROM patients 
WHERE allergies IS NOT NULL
GROUP BY allergies
ORDER by total DESC