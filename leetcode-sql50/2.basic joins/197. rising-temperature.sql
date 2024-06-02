SELECT w1.id From Weather w1
INNER JOIN Weather w2
ON datediff(w1.recordDate, w2.recordDate) = 1 
AND w2.temperature < w1.temperature