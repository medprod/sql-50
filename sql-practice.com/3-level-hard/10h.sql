-- We need a breakdown for the total amount of admissions each doctor has started each year. Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.

SELECT d.doctor_id, 
CONCAT(d.first_name, ' ', d.last_name) AS doc_name,
d.specialty,
YEAR(ad.admission_date) as years,
COUNT(ad.patient_id) 
FROM doctors d
JOIN admissions ad 
ON d.doctor_id = ad.attending_doctor_id
GROUP BY d.doctor_id, years