-- Создаем триггер, который срабатывает после вставки или обновления оценки
CREATE OR REPLACE FUNCTION add_to_debtors()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE 
	surnameD TEXT;
	nameD TEXT;
	patronymicD TEXT;
	students_group_numberD TEXT;
BEGIN
	SELECT surname 
	INTO surnameD
	FROM student
	WHERE new.student_id = student_id;
	
	SELECT name 
	INTO nameD
	FROM student
	WHERE new.student_id = student_id;
	
	SELECT patronymic 
	INTO patronymicD
	FROM student
	WHERE new.student_id = student_id;
	
	SELECT students_group_number 
	INTO students_group_numberD
	FROM student
	WHERE new.student_id = student_id;
	
	
    IF NEW.mark = 2 THEN
        INSERT INTO debtor_students (surname, name, patronymic, group_id, debt_subject_id)
        VALUES (surnameD, nameD, patronymicD, students_group_numberD, NEW.field);
    END IF;


    RETURN NEW;
END;
$$;

-- Создаем триггер, привязанный к таблице Field_comprehension
CREATE TRIGGER add_to_debtors_trigger
AFTER INSERT OR UPDATE ON Field_comprehension
FOR EACH ROW
EXECUTE FUNCTION add_to_debtors();

UPDATE field_comprehension
SET mark = 2
WHERE student_id=838389 and field = '83871d28-6e1b-4f5c-b1f9-5a7a4a63d84b'


