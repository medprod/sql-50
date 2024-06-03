select city, COUNT(patient_id)
FROM patients
GROUP BY city
ORDER BY COUNT(patient_id) DESC, 
city ASC