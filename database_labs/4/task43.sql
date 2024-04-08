-- Задание 3
-- Добавьте в таблицу Students_group поле, содержащее информацию о старосте.
-- Старостой группы может быть только один из студентов, обучающихся в ней.

ALTER TABLE students_group
ADD COLUMN head_student_id INTEGER UNIQUE REFERENCES student(student_id);

-- Ограничение, гарантирующее, что староста принадлежит к своей группе
ALTER TABLE students_group
ADD CONSTRAINT check_head_student_belongs_to_group
CHECK (head_student_id IS NULL OR head_student_id IN 
(SELECT student_id FROM Students WHERE group_id = Students_group.group_id));
