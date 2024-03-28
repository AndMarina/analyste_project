-- Задание 3
-- Напишите запрос
-- № 	Условие запроса
-- 1	Переведите всех учащихся 3-го курса на 4-й, изменив номер группы

students_group_number students_group
-- Выведим все группы, которые нужно перевести на 4 курс
SELECT students_group_number
FROM students_group
WHERE students_group_number LIKE '%-3%';

-- Проверка работы функций substring/right и регулярных выражений
-- Получаем первую часть до тире
SELECT SPLIT_PART(students_group_number, '-', 1)
FROM students_group;

-- Номер группы до тройки
SELECT RIGHT(students_group_number, 1)
FROM students_group;

SELECT students_group_number, SPLIT_PART(students_group_number, '3', 1) || '4' || RIGHT(students_group_number, 1)
FROM students_group
WHERE students_group_number LIKE '%-3%'

-- Добавляеи каскадное обновление внешнего ключа
ALTER TABLE student
ADD CONSTRAINT students_group_key
FOREIGN KEY (students_group_number) REFERENCES students_group(students_group_number)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Итоговый запрос
UPDATE students_group
SET students_group_number = SPLIT_PART(students_group_number, '3', 1) || '4' || RIGHT(students_group_number, 1)
WHERE students_group_number LIKE '%-3%';
