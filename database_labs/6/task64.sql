-- 4 Задание
-- Предположим, преподаватель зашел в электронный журнал, 
-- чтобы проставить студенту оценку за дисциплину. Одновременно студент решил проверить, 
-- выставлена ли ему оценка. Смоделируйте данную ситуацию, заключив действия студента и 
-- преподавателя в транзакции с уровнем изоляции, в соответствии с вариантом. 
-- Приведите пример аномалий, которые могут возникнуть.

-- Транзакция студента
-- Смотрим оценки студента по всем предметам:
SELECT st.student_id, st.surname, st.students_group_number, field.field_name, mark.mark
FROM student AS st
INNER JOIN field_comprehension AS mark on st.student_id = mark.student_id
INNER JOIN field on mark.field = field.field_id
WHERE st.student_id = 813514

-- Транзакция преподавателя
-- Проставляем студенту оценку за дисциплину ОС
BEGIN; -- начало транзакции

UPDATE field_comprehension
SET mark = 2
WHERE (student_id = 813514) AND (field = '7ace7bee-0d70-5a1f-1113-2cd60d11dfa4');

COMMIT; -- фиксирование
