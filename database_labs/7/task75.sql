-- Задание 5
-- Создайте триггер, который удаляет всю строчку из базы, если удалить любую его часть.

-- создаем триггер, который будет срабатывать при любых обновлениях данных в таблице, которые будут равны NULL
CREATE TRIGGER null_section_trigger
AFTER UPDATE ON student
FOR EACH ROW -- указывает, что триггер должен выполняться для каждой отдельной строки
EXECUTE FUNCTION delete_row();

-- создание функции delete_row
CREATE OR REPLACE FUNCTION delete_row() 
   RETURNS TRIGGER 
AS $$
BEGIN
    IF(NEW.student_id IS NULL OR NEW.surname IS NULL OR NEW.name IS NULL 
        OR NEW.patronymic IS NULL OR NEW.students_group_number IS NULL 
        OR NEW.birthday IS NULL OR NEW.email IS NULL)
    THEN
        DELETE FROM field_comprehension WHERE student_id = NEW.student_id;
        DELETE FROM student WHERE student_id = NEW.student_id;
        RETURN NULL;
	END IF;
END;
$$ LANGUAGE plpgsql;

-- проверка работы триггера
UPDATE student SET email = NULL WHERE student_id = 838389;
SELECT * FROM student WHERE student_id = 838389;
