SELECT login, password as pass, acess_level
FROM users
WHERE acess_level = 1

SELECT *
FROM users
WHERE login::text like '90%'

SELECT students_group_number, COUNT(student_id)
FROM student
GROUP BY students_group_number
ORDER BY COUNT(student_id) desc


SELECT students_group_number, COUNT(student_id)
FROM student
GROUP BY students_group_number
HAVING COUNT(student_id) > 10


SELECT students_group_number, COUNT(student_id) AS count_of_students
FROM student
WHERE students_group_number like 'ИВТ%'
GROUP BY students_group_number
HAVING COUNT(student_id) > 19
ORDER BY COUNT(student_id) desc

