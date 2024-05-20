SELECT e1.name
FROM Employee e1
LEFT JOIN Employee e2
ON e2.managerID = e1.id
GROUP BY e1.id, e1.name, e2.managerID
HAVING COUNT(e2.managerID) >=5