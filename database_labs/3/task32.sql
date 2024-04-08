-- Задание 2

-- 5 вариант
-- Вывести ФИО преподавателей, у которых зарплата больше 20 000.
SELECT surname, name, patronymic
FROM professor
WHERE salary > MONEY(20000)

-- 1 вариант
-- Выведите информацию о том, к каким институтам относятся группы.
SELECT students_group.students_group_number, structural_unit.full_title
FROM students_group  
INNER JOIN structural_unit
ON students_group.structural_unit_number = structural_unit.structural_unit_id