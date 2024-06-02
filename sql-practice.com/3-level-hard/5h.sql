-- Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.

-- Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.

WITH CTE as 
(SELECT patient_id, admission_date, discharge_date, diagnosis, attending_doctor_id,
(CASE WHEN patient_id%2==0 THEN 10 ELSE 50 END) as hasIns
FROM admissions)

SELECT 
(CASE WHEN hasIns=50 THEN 'No' ELSE 'Yes' END) as has_insurance,
SUM(hasIns) as cost_after_insurance
FROM CTE
GROUP BY has_insurance