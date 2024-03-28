INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000001, 'Артёмов', 'Василий', 'Александрович', 'artemovvasiliy@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000002, 'Долгова', 'Александра', 'Владимировна', 'dolgovaalxa@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000003, 'Беляев', 'Иван', 'Егорович', 'belyaevivan@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000004, 'Панов', 'Виктор', 'Александрович', 'panovviktor@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000005, 'Родионова', 'Ольга', 'Михайловна', 'rodionovaolga@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000006, 'Лукьянов', 'Тимофей', 'Никитич', 'lukyanovtimopothey@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000007, 'Родионов', 'Алексей', 'Михайлович', 'rodionovalex@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000008, 'Иванов', 'Иван', 'Ильич', 'ivanovivan@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000009, 'Воронина', 'Таисия', 'Артёмовна', 'voroninataisiya@miet.ru');

INSERT INTO sport_teachers (teacher_id, surname, name, patronymic, email)
VALUES (1000010, 'Щербаков', 'Леонид', 'Иванович', 'sherbakovleonid@miet.ru');

SELECT * 
FROM sport_teachers;

-----------------------------------------------
INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (1, 1000001, 'Футбол');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (2, 1000002, 'Баскетбол');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (3, 1000003, 'Настольный теннис');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (4, 1000004, 'Большой теннис');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (5, 1000005, 'Плавание');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (6, 1000006, 'Водное поло');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (7, 1000007, 'Хоккей');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (8, 1000008, 'Легкая атлетика');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (9, 1000009, 'Тяжелая атлетика');

INSERT INTO sport_section (section_id, teacher_id, name)
VALUES (10, 1000010, 'Карате');

SELECT * 
FROM sport_section


------------------------------------------------------------
INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (1, 899472, 1);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (3, 899474, 2);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (4, 899475, 10);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (5, 899476, 9);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (6, 899478, 5);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (7, 899477, 5);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (8, 899479, 9);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (9, 899480, 1);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (10, 899481, 2);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (11, 899482, 3);

INSERT INTO students_sport_sections (students_sport_sections_id, student_id, section_id)
VALUES (2, 899483, 1);

SELECT * 
FROM students_sport_sections






