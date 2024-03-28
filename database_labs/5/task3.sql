
student (student_id, surname, name, patronymic, students_group_number, birthday, email)


SELECT professor.professor_id ,professor.surname, field.field_name, employment.structural_unit_number, (
    SELECT CAST(AVG(mark) AS NUMERIC(2,1))
    FROM Field_comprehension
    WHERE Field_comprehension.student_id = ANY (
		SELECT student.student_id
    	FROM student, structural_unit
    	WHERE structural_unit.structural_unit_id = ANY (
			SELECT structural_unit_number
    		FROM employment
    		WHERE professor_id = professor.professor_id and employment.wage_rate <= 0.25
		)
	)
) AS "Средняя оценка по институту", (
	SELECT CAST(AVG(mark) AS NUMERIC(2,1))
	FROM Field_comprehension
	WHERE Field_comprehension.field = field.field_id
) AS "Средняя оценка по препода"
FROM professor
JOIN field ON professor.professor_id = field.professor_id
JOIN employment ON professor.professor_id = employment.professor_id
WHERE (
    SELECT CAST(AVG(mark) AS NUMERIC(2,1))
    FROM Field_comprehension
    WHERE Field_comprehension.student_id = ANY (
		SELECT student.student_id
    	FROM student, structural_unit
    	WHERE structural_unit.structural_unit_id = ANY (
			SELECT structural_unit_number
    		FROM employment
    		WHERE professor_id = professor.professor_id and employment.wage_rate <= 0.25
		)
	)
) > (
	SELECT CAST(AVG(mark) AS NUMERIC(2,1))
	FROM Field_comprehension
	WHERE Field_comprehension.field = field.field_id
)


DELETE FROM field_comprehension WHERE field = ANY (
	SELECT field_id
	FROM field
	WHERE professor_id = 81009
);

DELETE FROM field WHERE professor_id = 81009;

DELETE FROM employment WHERE professor_id = 81009;

DELETE FROM professor 
WHERE professor_id = 81009 ;




