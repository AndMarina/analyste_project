-- Задание 1
-- Напишите запрос по варианту
-- Напишите скрипт, выводящий количество всех оценок 5, 4, 3, 2 в единой таблице

do 
$$
DECLARE
    grade CHAR(1);
BEGIN
    FOR grade IN ('5', '4', '3', '2') LOOP
        RAISE NOTICE 'Grade %: %', grade, (
            SELECT COUNT(*) FROM field_comprehension WHERE mark = grade
        );
    END LOOP;
END 
$$;

do
$$
DECLARE 
	students record;
	studentid constant INTEGER := 838389;
BEGIN
	SELECT surname, name 
	INTO students
	FROM student
	WHERE student_id = studentid;
	raise notice 'Имя: %, Фамилия: %', students.name, students.surname; 
END
$$;

DO $$
DECLARE
    grade CHAR(1);
    grade_count INT;
BEGIN
    FOR grade IN ('5', '4', '3', '2') LOOP
        EXECUTE format('SELECT COUNT(*) FROM field_comprehension WHERE mark = %L', grade) INTO grade_count;
        RAISE NOTICE 'Grade %: %', grade, grade_count;
    END LOOP;
END $$;
