SELECT pat.patient_id, pat.first_name, pat.last_name
FROM patients pat 
JOIN admissions ad 
ON pat.patient_id = ad.patient_id
WHERE ad.diagnosis = 'Dementia'