SELECT
CONCAT(UPPER(last_name), ',', LOWER(first_name)) AS name
FROM patients
ORDER BY first_name DESC