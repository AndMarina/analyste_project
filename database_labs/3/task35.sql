-- Задание 5
-- -- Самостоятельно разработайте 5 осмысленных запросов к базе данных

SELECT login, password
FROM users
INNER JOIN student
ON users.login = student.student_id;

SELECT * 
FROM debtor_students
INNER JOIN field
ON uuid(debtor_students.debt_subject_id) = field.field_id

SELECT name, surname, structural_unit_number
FROM student
INNER JOIN students_group
ON student.students_group_number = students_group.student_groups_number;

SELECT * 
FROM debtor_students
LEFT OUTER JOIN student
ON student.surname = debtor_students.surname AND student.name = debtor_students.name

SELECT surname, name, patronymic
FROM student
UNION
SELECT surname, name, patronymic
FROM professor

SELECT surname, name, patronymic 
FROM student
EXCEPT 
SELECT surname, name, patronymic 
FROM debtor_students