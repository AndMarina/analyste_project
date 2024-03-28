ALTER TABLE students_group
ADD COLUMN elder_id integer,
ADD CONSTRAINT students_group_number FOREIGN KEY(elder_id) REFERENCES student(student_id);

UPDATE students_group
SET elder_id=866614
WHERE students_group_number='ИВТ-42';

SELECT *
FROM students_group;