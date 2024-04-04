-- Задание 4
-- Создайте процедуру удаления преподавателя

-- удаление процедуры, с проверкой, что она существует
DROP PROCEDURE IF EXISTS del_professor;

CREATE PROCEDURE del_professor(professor_id_del bigint)
LANGUAGE SQL
AS $$
DELETE FROM employment WHERE professor_id = professor_id_del;
DELETE FROM field WHERE professor_id = professor_id_del;
DELETE FROM professor WHERE professor_id = professor_id_del;
$$;