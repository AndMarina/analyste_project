-- Задание 3
-- Посчитать количество групп 4-го курса.

SELECT COUNT(distinct students_group_number)
FROM student
WHERE students_group_number LIKE '%-4_'