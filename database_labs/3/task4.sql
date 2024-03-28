-- 5 вариант
SELECT professor.surname, field.field_name, (
    SELECT CAST(AVG(mark) AS NUMERIC(2,1))
    FROM Field_comprehension
    WHERE Field_comprehension.student_id = ANY (
		SELECT student.student_id
    	FROM student, structural_unit
    	WHERE structural_unit.structural_unit_id = ANY (
			SELECT structural_unit_number
    		FROM employment
    		WHERE professor_id = professor.professor_id
		)
	)
) AS "Средняя оценка по институту", (
	SELECT CAST(AVG(mark) AS NUMERIC(2,1))
	FROM Field_comprehension
	WHERE Field_comprehension.field = field.field_id
) AS "Средняя оценка по препода"
FROM professor
JOIN field ON professor.professor_id = field.professor_id
WHERE  (
    SELECT CAST(AVG(mark) AS NUMERIC(2,1))
    FROM Field_comprehension
    WHERE Field_comprehension.student_id = ANY (
		SELECT student.student_id
    	FROM student, structural_unit
    	WHERE structural_unit.structural_unit_id = ANY (
			SELECT structural_unit_number
    		FROM employment
    		WHERE professor_id = professor.professor_id
		)
	)
) < (
	SELECT CAST(AVG(mark) AS NUMERIC(2,1))
	FROM Field_comprehension
	WHERE Field_comprehension.field = field.field_id
)

-- 1 вариант
SELECT name, COUNT(name) AS name_count
FROM student
GROUP BY name
ORDER BY COUNT(name) DESC
LIMIT 1
