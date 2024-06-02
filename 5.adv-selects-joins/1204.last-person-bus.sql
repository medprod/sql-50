WITH CTE_Queue as(
    SELECT person_id, person_name, 
    SUM(weight) OVER (ORDER BY turn ROWS UNBOUNDED PRECEDING) AS totalWeight,
    turn 
    FROM Queue
)

SELECT person_name FROM CTE_Queue
WHERE totalWeight in
(SELECT MAX(totalWeight) FROM CTE_Queue WHERE totalWeight <=1000)