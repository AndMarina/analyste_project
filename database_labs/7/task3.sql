CREATE OR REPLACE FUNCTION find_professor(professor_id bigint) RETURNS table (
	professor_id INTEGER,
    surname TEXT,
    name TEXT,
    patronymic TEXT,
    degree TEXT,
    academic_title TEXT,
    сurrent_position TEXT,
    experience INTEGER,
	salary MONEY,
	phone TEXT
)
LANGUAGE SQL
AS $$
SELECT *
FROM professor
WHERE professor_id = professor_id
$$;

----------------------------
SELECT find_professor(81001)
