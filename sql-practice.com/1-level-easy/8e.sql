SELECT first_name, last_name, allergies
FROM patients
WHERE allergies is NOT NULL
AND city='Hamilton'