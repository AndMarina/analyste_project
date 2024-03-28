-- Создаем триггер, который срабатывает перед вставкой
CREATE OR REPLACE FUNCTION check_student_age()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF NEW.birthday IS NOT NULL AND age(NEW.birthday) > '100 years' THEN
        RAISE EXCEPTION 'Возраст студента не может превышать 100 лет';
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER check_student_age_trigger
BEFORE INSERT ON Student
FOR EACH ROW
EXECUTE FUNCTION check_student_age();


insert into Student VALUES
('838389','Иванова','Есения','Ивановна','ИБ-21','23.12.1911','IvanovaEsenija@miet.ru');
