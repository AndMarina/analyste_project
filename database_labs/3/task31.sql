-- Задание 3

-- 1 вариант
-- Выведите фамилии и имена всех людей, кто причастен к вузу.
SELECT surname, name
FROM student
UNION
SELECT surname, name
FROM professor

-- 5 вариант
-- Выведите номер студенческого билета студента, который получил 2 по любым дисциплинам.
SELECT student.student_id, surname, name, mark
FROM student
INNER JOIN field_comprehension
ON field_comprehension.student_id = student.student_id
WHERE mark = 2
