-- Задание 4
-- В соответствии с вариантом доработайте базу данных. 
-- При доработке БД должно быть добавлено не менее трех новых таблиц. 

-- Вариант 2: Добавить возможность занятости студентов в спортивных секциях

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
);

CREATE TABLE students_sport_sections(
    students_sport_sections_id integer,
    student_id integer REFERENCES student(student_id),
    section_id integer REFERENCES sport_section(section_id),
    PRIMARY KEY (students_sport_sections_id)
);

SELECT *
FROM students_sport_sections;