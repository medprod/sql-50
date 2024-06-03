SELECT first_name, last_name, birth_date
FROM patients
WHERE YEAR(birth_date) LIKE '197%'
ORDER BY birth_date ASC