SELECT first_name
FRom patients
GROUP BY first_name
HAVING COUNT(first_name) = 1