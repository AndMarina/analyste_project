-- 3 Задание
-- Проанализируйте учебную базу данных и проиндексируйте одно из полей любой таблицы. Объясните свой выбор.

EXPLAIN ANALYZE 
SELECT *
FROM student
WHERE students_group_number = 'ИВТ-41';

CREATE INDEX students_group_number ON student(students_group_number);