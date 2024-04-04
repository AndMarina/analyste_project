-- Задание 3
-- Сделайте функцию, которая выводит всю информацию о преподавателе по его id

-- вывод информации о преподавателе только из таблицы 'professor', порождает таблицу
CREATE FUNCTION get_professor(int) RETURNS professor AS $$
    SELECT * FROM public.professor WHERE professor_id = $1;
$$ LANGUAGE SQL;

-----------------------------------
SELECT * FROM get_professor(81001);

-- вывод информации о преподавателе только таблицы 'professor' и таблицы 'employment', порождает таблицу

CREATE TYPE professor_all_info AS( -- создание пользовательского типа переменной
    professor_id int, 
    surname varchar(30), 
    name varchar(30), 
    patronymic VARCHAR(30), 
    degree VARCHAR(15), 
    academic_ttile VARCHAR(40), 
    current_position VARCHAR(40), 
    experience int, 
    salary money, 
    structural_unit_number int, 
    professor_id int,
    contract_number int,
    wage_rate numeric(3,2)
);

CREATE FUNCTION get_professor_employment(int) RETURNS professor_all_info AS $$
    SELECT * FROM professor
    INNER JOIN employment ON professor.professor_id = employment.professor_id  
    WHERE professor.professor_id = $1;
$$ LANGUAGE SQL;

-----------------------------------
SELECT * FROM get_professor_employment(81001);

-- вывод в формате кортежа строки, разделенные запятой (records)
CREATE OR REPLACE FUNCTION find_professor(professor_id bigint) RETURNS table (
	professor_id INTEGER,
    surname TEXT,
    name TEXT,
    patronymic TEXT,
    degree TEXT,
    academic_title TEXT,
    сurrent_position TEXT,
    experience INTEGER,
	salary MONEY
)
LANGUAGE SQL
AS $$
SELECT *
FROM professor
WHERE professor_id = professor_id
$$;

-- удаление типа и прошлой функции
DROP TYPE professor_info CASCADE;

-- вывод информации о пользовательском типе
SELECT * 
FROM pg_type 
WHERE typname = 'professor_info';
