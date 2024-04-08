-- Задание 2
-- Напишите SQL запрос к учебной базе данных в соответствии с вариантом.
-- Вывести ФИО и дату рождения самого молодого студента

-- первый вариант
SELECT name, surname, patronymic, birthday
FROM student
WHERE birthday = (SELECT MAX(birthday) FROM student)

-- второй вариант
SELECT name, surname, patronymic, birthday
FROM student
ORDER BY birthday DESC
LIMIT 1
