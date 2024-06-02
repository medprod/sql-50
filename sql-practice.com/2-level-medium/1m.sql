-- Show unique birth years from patients and order them by ascending.
SELECT distinct YEAR(birth_date) 
FROM patients
ORDER BY birth_date ASC