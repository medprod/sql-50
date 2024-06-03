SELECT first_name, last_name,
"Patient" as role
FROM patients
UNION all
sELECT first_name, last_name,
"Doctor" as role
FROM doctors