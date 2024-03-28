SELECT field, COUNT(student_id)
FROM field_comprehension
WHERE mark != 2
GROUP BY field
ORDER BY COUNT(student_id) desc;

SELECT *
FROM field_comprehension
WHERE field = '9c566d9e-53a4-bd5a-acd5-8c4af5886add' and mark > 2 
ORDER BY mark
