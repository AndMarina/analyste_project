-- Задание 5
-- Создайте на основе любых запросов из предыдущих лабораторных работ составьте 2–3 представление

-- должники и предметы
CREATE VIEW debtor_students_subject AS
SELECT *
FROM debtor_students
INNER JOIN field
ON uuid(debtor_students.debt_subject_id) = field.field_id; 

SELECT * FROM debtor_students_subject;

-- все люди в миэт (ФИО)
CREATE VIEW all_people_in_miet AS
SELECT surname, name, patronymic
FROM student
UNION
SELECT surname, name, patronymic
FROM professor;

SELECT * FROM all_people_in_miet;

-----------------------------------

CREATE VIEW debtor_students AS
SELECT * 
FROM debtor_students
INNER JOIN field
ON uuid(debtor_students.debt_subject_id) = field.field_id

-----------------------------------

CREATE VIEW awesome_professor AS
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
	)<
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

-----------------------------------

CREATE VIEW all_people_in_miet AS
SELECT surname, name, patronymic
FROM student
UNION
SELECT surname, name, patronymic
FROM professor