SELECT student.student_id, student.surname, student.students_group_number, (
	SELECT CAST(AVG(mark) AS NUMERIC(2,1))
	FROM field_comprehension
	where field_comprehension.student_id = student.student_id
	AND mark IS NOT NULL
	HAVING COUNT(CASE WHEN mark = 3 and field_comprehension.student_id = student.student_id  THEN 1 END) = 0
) AS "Средняя оценка"
FROM student
WHERE students_group_number like '%3_' and (
	SELECT structural_unit_number
	FROM students_group
	WHERE students_group_number = student.students_group_number
) = 4
AND (
	SELECT CAST(AVG(mark) AS NUMERIC(2,1))
	FROM field_comprehension
	where field_comprehension.student_id = student.student_id
	AND mark IS NOT NULL
	HAVING COUNT(CASE WHEN mark = 3 and field_comprehension.student_id = student.student_id  THEN 1 END) = 0
) IS NOT NULL
ORDER BY "Средняя оценка" desc;

------------------------

UPDATE field_comprehension
SET mark = 4
WHERE mark = 3 and student_id = 894279;

SELECT * 
FROM field_comprehension
WHERE student_id = 894279;