SELECT 
e1.employee_id, e1.name,
COUNT(e2.name) AS reports_count,
ROUND(AVG(e2.age),0) AS average_age
FROM Employees e1
JOIN EmployeeS e2
ON e1.employee_id = e2.reports_to  
WHERE e1.employee_id IS NOT NULL and e2.reports_to IS NOT NULL
GROUP BY e1.employee_id, e1.name
ORDER BY e1.employee_id