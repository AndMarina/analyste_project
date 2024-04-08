-- Задание 5
-- Самостоятельно разработайте 5 осмысленных запросов к базе данных

-- Вывести должникоы 4 курса
SELECT surname AS list_for_deduction
FROM debtor_students
WHERE group_id LIKE '%4_';

-- Вывести почту студентов ИВТ
SELECT email
FROM student
WHERE students_group_number LIKE 'ИВТ%'

-- Определить количество студентов по направлениям «ИВТ» и «ИТД»
SELECT students_group_number, COUNT(*) AS count_students FROM public.student
WHERE students_group_number ~ '^(ИВТ|ИТД)'
GROUP BY students_group_number
ORDER BY students_group_number desc;

-- Вывести группы по направлениям «ИВТ» и «ИТД», где студентов не меньше 20
SELECT students_group_number, COUNT(*) AS count_students FROM public.student
WHERE students_group_number ~ '^(ИВТ|ИТД)'
GROUP BY students_group_number
HAVING COUNT(*) >= 20

-- Сгруппировать по группам, посчитав количество девушек в каждой группе, 
-- что подразумевает собой определение пола по окончанию отчества (при наличии). 
-- Вывести группы, в которых они есть в порядке убывания по количеству девушек в каждой группе.
SELECT students_group_number, COUNT(*) AS count_girls FROM public.student
WHERE patronymic NOT LIKE '%ч' AND patronymic IS NOT NULL
GROUP BY students_group_number
HAVING COUNT(*) > 0
ORDER BY count_girls DESC;
