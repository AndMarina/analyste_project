INSERT INTO students_group (students_group_number, enrolment_status, structural_unit_number) 
	VALUES('ИВТ-12', 'Очная', 1);


SELECT *
FROM students_group;

insert into Students_group (students_group_number, enrolment_status, structural_unit_number) VALUES 
('ИВТ-11', 'Очная', 1);

SELECT *
FROM students_group;


-- -- 1
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899472, 'Филиппов', 'Артём', 'Никитич', 'ИВТ-11', date('2005-06-12'), 'fillipovartem@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899472, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899472, '2005-06-12', 0);

-- 2
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES  
(899474, 'Беляков', 'Бронислав', 'Архипович', 'ИВТ-11', date('2004-12-13'), 'bbeljakov@miet.ru'),
(899475, 'Кулаков', 'Мирон', 'Валерьянович', 'ИВТ-11', date('2001-09-01'), 'mkulakov@miet.ru'),
(899476, 'Некрасов', 'Гедеон', 'Иосифович', 'ИВТ-11', date('2001-12-02'), 'gnekrasov@miet.ru'),
(899477, 'Тарасов', 'Стоян', 'Афанасьевич', 'ИВТ-11', date('2003-05-06'), 'starasov@miet.ru'),
(899478, 'Фролов', 'Ульян', 'Валентинович', 'ИВТ-11', date('2001-03-09'), 'ufrolov@miet.ru'),
(899479, 'Власов', 'Панкрат', 'Егорович', 'ИВТ-11', date('2001-07-30'), 'pvlasov@miet.ru'),
(899480, 'Денисов', 'Святополк', 'Гавриилович', 'ИВТ-11', date('2005-11-01'), 'sdenisov@miet.ru'),
(899481, 'Семенов', 'Вадим', 'Феофанович', 'ИВТ-11', date('2005-06-10'), 'vsemenov@miet.ru'),
(899482, 'Уваров', 'Мефодий', 'Вилорович', 'ИВТ-11', date('2002-08-17'), 'muvarov@miet.ru'),
(899483, 'Владимиров', 'Боян', 'Васильевич', 'ИВТ-11', date('2001-07-21'), 'bvladimirov@miet.ru'),
(899484, 'Иванов', 'Митофан', 'Федотович', 'ИВТ-11', date('2004-09-07'), 'mivanov@miet.ru'),
(899485, 'Стрелков', 'Аполлон', 'Авдеевич', 'ИВТ-11', date('2004-06-24'), 'astrelkov@miet.ru'),
(899486, 'Ершов', 'Христофор', 'Чеславович', 'ИВТ-11', date('2006-01-17'), 'hershov@miet.ru'),
(899487, 'Григорьев', 'Ким', 'Дорофеевич', 'ИВТ-11', date('2005-09-19'), 'kgrigorev@miet.ru'),
(899488, 'Родионов', 'Устин', 'Тихонович', 'ИВТ-11', date('2004-09-02'), 'urodionov@miet.ru'),
(899489, 'Яковлев', 'Трофим', 'Борисович', 'ИВТ-11', date('2002-07-09'), 'tjakovlev@miet.ru'),
(899490, 'Шубин', 'Лучезар', 'Ефимьевич', 'ИВТ-11', date('2003-12-27'), 'lshubin@miet.ru'),
(899491, 'Вишняков', 'Вениамин', 'Геннадиевич', 'ИВТ-11', date('2001-09-10'), 'vvishnjakov@miet.ru'),
(899492, 'Тарасов', 'Вацлав', 'Демидович', 'ИВТ-11', date('2001-11-10'), 'vtarasov@miet.ru'),
(899493, 'Юдин', 'Никанор', 'Арсенович', 'ИВТ-11', date('2001-12-04'), 'njudin@miet.ru'),
(899494, 'Симонова', 'Майя', 'Руслановна', 'ИВТ-11', date('2002-03-28'), 'msimonova@miet.ru'),
(899495, 'Никонова', 'Оксана', 'Матвеевна', 'ИВТ-11', date('2003-08-08'), 'onikonova@miet.ru'),
(899496, 'Гаврилова', 'Ангелина', 'Геннадьевна', 'ИВТ-11', date('2001-08-01'), 'agavrilova@miet.ru'),
(899497, 'Сидорова', 'Жанна', 'Михайловна', 'ИВТ-11', date('2004-04-24'), 'zhsidorova@miet.ru'),
(899498, 'Королева', 'Тамара', 'Юрьевна', 'ИВТ-11', date('2003-05-28'), 'tkoroleva@miet.ru');

INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES 
(899474, date('2023-08-31'), date('2027-08-31')),
(899475, date('2023-08-31'), date('2027-08-31')),
(899476, date('2023-08-31'), date('2027-08-31')),
(899477, date('2023-08-31'), date('2027-08-31')),
(899478, date('2023-08-31'), date('2027-08-31')),
(899479, date('2023-08-31'), date('2027-08-31')),
(899480, date('2023-08-31'), date('2027-08-31')),
(899481, date('2023-08-31'), date('2027-08-31')),
(899482, date('2023-08-31'), date('2027-08-31')),
(899483, date('2023-08-31'), date('2027-08-31')),
(899484, date('2023-08-31'), date('2027-08-31')),
(899485, date('2023-08-31'), date('2027-08-31')),
(899486, date('2023-08-31'), date('2027-08-31')),
(899487, date('2023-08-31'), date('2027-08-31')),
(899488, date('2023-08-31'), date('2027-08-31')),
(899489, date('2023-08-31'), date('2027-08-31')),
(899490, date('2023-08-31'), date('2027-08-31')),
(899491, date('2023-08-31'), date('2027-08-31')),
(899492, date('2023-08-31'), date('2027-08-31')),
(899493, date('2023-08-31'), date('2027-08-31')),
(899494, date('2023-08-31'), date('2027-08-31')),
(899495, date('2023-08-31'), date('2027-08-31')),
(899496, date('2023-08-31'), date('2027-08-31')),
(899497, date('2023-08-31'), date('2027-08-31')),
(899498, date('2023-08-31'), date('2027-08-31'));

INSERT INTO users (login, password, acess_level) 
VALUES 
(899474, '2003-04-15', 0),
(899475, '2005-06-06', 0),
(899476, '2005-09-11', 0),
(899477, '2006-01-17', 0),
(899478, '2005-08-01', 0),
(899479, '2003-01-21', 0),
(899480, '2004-11-20', 0),
(899481, '2004-03-07', 0),
(899482, '2002-05-24', 0),
(899483, '2001-02-04', 0),
(899484, '2001-09-06', 0),
(899485, '2004-05-29', 0),
(899486, '2001-07-06', 0),
(899487, '2003-10-31', 0),
(899488, '2005-01-27', 0),
(899489, '2003-02-28', 0),
(899490, '2002-05-14', 0),
(899491, '2002-08-19', 0),
(899492, '2003-08-31', 0),
(899493, '2001-07-26', 0),
(899494, '2001-04-30', 0),
(899495, '2001-09-23', 0),
(899496, '2003-02-27', 0),
(899497, '2001-12-07', 0),
(899498, '2001-03-04', 0);


INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899473, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899473, '2005-12-22', 0);

-- 3
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 

INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899474, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899474, '2005-01-14', 0);

-- 4
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 

INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899475, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899475, '2005-02-17', 0);

-- 5
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899476, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899476, '2005-09-25', 0);

-- 6
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899477, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899477, '2005-04-29', 0);

-- 7
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899478, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899478, '2005-11-11', 0);

-- 8
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899479, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899479, '2005-06-28', 0);

-- 9
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899480, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899480, '2005-10-25', 0);

-- 10
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899481, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899481, '2005-07-31', 0);

-- 11
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899482, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899482, '2005-05-09', 0);

-- 12
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899483, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899483, '2005-02-28', 0);

-- 13
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899484, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899484, '2005-08-30', 0);

-- 14
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899485, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899485, '2005-03-15', 0);

-- 15
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES 
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899486, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899486, '2005-01-18', 0);

-- 16
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899487, 'Воробьева', 'Виктория', 'Николаевна', 'ИВТ-12', date('2005-06-16'), 'vorobvika@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899487, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899487, '2005-06-16', 0);

-- 17
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899488, 'Алеексеев', 'Иван', 'Романович', 'ИВТ-12', date('2005-07-10'), 'alekseevroman@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899488, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899488, '2005-07-10', 0);


-- 18
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899489, 'Черных', 'Валерия', 'Леонидовна', 'ИВТ-12', date('2005-12-24'), 'chernyxvaleriya@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899489, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899489, '2005-12-24', 0);

-- 19
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899490, 'Кузьмин', 'Мирон', 'Тимофеевич', 'ИВТ-12', date('2005-04-24'), 'kuzminmiron@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899490, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899490, '2005-04-24', 0);

-- 20
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899491, 'Усов', 'Александр', 'Русланович', 'ИВТ-12', date('2005-05-18'), 'ysovalex@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899491, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899491, '2005-05-18', 0);

-- 21
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899492, 'Колесников', 'Максим', 'Фёдорович', 'ИВТ-12', date('2005-08-17'), 'kolesnikovmax@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899492, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899492, '2005-08-17', 0);

-- 22
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899493, 'Козловский', 'Александр', 'Степанович', 'ИВТ-12', date('2005-10-12'), 'kozlovskiyalex@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899493, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899493, '2005-10-12', 0);

-- 23
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899494, 'Маркова', 'Анна', 'Дмитриевна', 'ИВТ-12', date('2005-02-14'), 'markovaanna@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899494, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899494, '2005-02-14', 0);

-- 24
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899495, 'Петухов', 'Александр', 'Ильич', 'ИВТ-12', date('2005-06-01'), 'alexpetyx@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899495, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899495, '2005-06-01', 0);

-- 25
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (899496, 'Родионов', 'Даниэль', 'Мирославович', 'ИВТ-12', date('2005-09-24'), 'rodionovdaniel@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (899496, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (899496, '2005-09-24', 0);

-- 26
INSERT INTO student (student_id, surname, name, patronymic, students_group_number, birthday, email) 
VALUES (8200456, 'Коннов', 'Михаил', 'Юрьевич', 'ИВТ-12', date('2002-06-28'), 'konnovm@miet.ru');
INSERT INTO student_id (student_id, issue_date, expiration_date) 
VALUES (8200456, date('2023-08-31'), date('2027-08-31'));
INSERT INTO users (login, password, acess_level) VALUES (8200456, '2002-06-28', 0);


SELECT *
FROM field
WHERE field_id = '7ace7bee-0d70-5a1f-1113-2cd60d11dfa4';


-- uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4')

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899472, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);
	
INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899473, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);
	
INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899474, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899475, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899476, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899477, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899478, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899479, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899480, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899481, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899482, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899483, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899484, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899485, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899486, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899487, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899488, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899489, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899490, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899491, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899492, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899493, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899494, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899495, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (899496, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);

INSERT INTO field_comprehension (student_id, field, mark) 
VALUES (8200456, uuid('7ace7bee-0d70-5a1f-1113-2cd60d11dfa4'), 2);
	
	



SELECT * FROM field_comprehension ORDER BY student_id desc
 








