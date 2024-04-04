-- Задание 2
-- Создайте процедуру добавления нового преподавателя


CREATE PROCEDURE add_Student(
    Student_ID bigint, datebegin date, dateend date, F VARCHAR(30), I VARCHAR(30), O VARCHAR(30), groupe VARCHAR(7) ,birthday date, email VARCHAR(30))
LANGUAGE SQL
AS $$
INSERT INTO student VALUES (Student_ID, F, I, O, groupe, birthday, email);
INSERT INTO student_id VALUES (Student_ID, datebegin, dateend);
$$;

CREATE PROCEDURE add_professor(
    professor_id bigint, F VARCHAR(30), I VARCHAR(30), O VARCHAR(30), degree VARCHAR(15), academic_ttile VARCHAR(40), current_position VARCHAR(40), experience bigint, salary money, 
    structural_unit_number bigint, contract_number bigint, wage_rate numeric(3,2))
LANGUAGE SQL
AS $$
INSERT INTO professor VALUES (professor_id, F, I, O, degree, academic_ttile, current_position, experience, salary)
INSERT INTO employment VALUES (structural_unit_number, professor_id, contract_number, wage_rate)
$$;