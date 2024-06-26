# Write your MySQL query statement below
SELECT A1.MACHINE_ID, ROUND(AVG(A2.TIMESTAMP - A1.TIMESTAMP), 3) AS PROCESSING_TIME
FROM ACTIVITY AS A1 INNER JOIN ACTIVITY AS A2
ON A1.MACHINE_ID = A2.MACHINE_ID AND A1.PROCESS_ID = A2.PROCESS_ID AND A1.ACTIVITY_TYPE = 'START' AND A2.ACTIVITY_TYPE = 'END' GROUP BY A1.MACHINE_ID;