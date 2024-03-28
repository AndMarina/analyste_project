-- 5 вариант
SELECT surname, name, mark
FROM Student
INNER JOIN Field_comprehension
ON Field_comprehension.student_id = Student.student_id
WHERE mark = 3


SELECT student_id
FROM Field_comprehension
WHERE mark = 3

-- 1 вариант
SELECT surname, name
FROM student
UNION
SELECT surname, name
FROM professor