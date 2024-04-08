-- Задание 1
-- В учебной базе данных одним из допущений является возможность прикрепить только одного преподавателя к дисциплине.
-- Исправьте это.

-- создадим доп.таблицу с взаимоотношений дисциплин и преподавателей
CREATE TABLE professor_field(
    professor_field_id INTEGER NOT NULL PRIMARY KEY,
    professor_id INTEGER NOT NULL REFERENCES professor(professor_id),
    field_id  UUID NOT NULL REFERENCES field(field_id)
);


-- удалим атрибут professor_id в текущей таблицы field
ALTER TABLE field
DROP COLUMN professor_id RESTRICT;