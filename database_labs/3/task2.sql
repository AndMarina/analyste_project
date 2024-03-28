-- 5 вариант
SELECT surname, name, patronymic
FROM professor
WHERE salary > MONEY(20000)

-- 1 вариант
SELECT students_group.students_group_number, structural_unit.full_title
FROM students_group  
INNER JOIN structural_unit
ON students_group.structural_unit_number = structural_unit.structural_unit_id