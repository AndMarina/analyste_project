-- Задание 4
-- Посчитать, сколько должников и в каких группах.

SELECT COUNT(distinct id), group_id
FROM debtor_students
GROUP BY group_id