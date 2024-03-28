DROP TABLE IF EXISTS sport_teachers CASCADE;
DROP TABLE IF EXISTS sport_section CASCADE;
DROP TABLE IF EXISTS students_sport_sections CASCADE;

CREATE TABLE sport_teachers(
	teacher_id integer,
    surname VARCHAR(64),
    name VARCHAR(64),
    patronymic VARCHAR(64),
	email VARCHAR(64),
	PRIMARY KEY(teacher_id),
	CONSTRAINT email_cheak 
        CHECK (email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
);

CREATE TABLE sport_section(
	section_id integer,
	teacher_id integer,
    name VARCHAR(64),
	PRIMARY KEY(section_id),
	CONSTRAINT teacher_id_key
        FOREIGN KEY(teacher_id) 
            REFERENCES sport_teachers(teacher_id)
            ON DELETE CASCADE
	
);

CREATE TABLE students_sport_sections(
	student_id integer,
    section_id integer,
	CONSTRAINT student_id_key
        FOREIGN KEY(student_id) 
            REFERENCES student(student_id)
            ON DELETE CASCADE,
	CONSTRAINT section_id_key
        FOREIGN KEY(section_id) 
            REFERENCES sport_section(section_id)
            ON DELETE CASCADE,
	PRIMARY KEY (student_id, section_id)
);

SELECT * 
FROM students_sport_sections;

ALTER TABLE students_group
ADD COLUMN head_student_id INTEGER UNIQUE REFERENCES student(student_id);

ALTER TABLE professor
ADD COLUMN phone_number VARCHAR(15),
ADD CONSTRAINT check_phone_number
CHECK (phone_number ~ '^(\+7|8)\(\d{3}\)\d{3}-\d{2}-\d{2}$');

-- создадим доп.таблицу с взаимоотношений дисциплин и преподавателей
CREATE TABLE professor_field(
    professor_field_id INTEGER NOT NULL PRIMARY KEY,
    professor_id INTEGER NOT NULL REFERENCES professor(professor_id),
    field_id  UUID NOT NULL REFERENCES field(field_id)
);

-- удалим атрибут professor_id в текущей таблицы field
ALTER TABLE field 
DROP COLUMN professor_id RESTRICT;

CREATE TABLE students_sport_sections(
    students_sport_sections_id integer,
    student_id integer REFERENCES student(student_id),
    section_id integer REFERENCES sport_section(section_id),
    PRIMARY KEY (students_sport_sections_id)
);


