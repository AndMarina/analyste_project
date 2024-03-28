CREATE PROCEDURE del_professor(professor_id_del bigint)
LANGUAGE SQL
AS $$
DELETE FROM employment WHERE professor_id = professor_id_del;
DELETE FROM fields_professors WHERE professor_id = professor_id_del;
UPDATE field SET professor_id=81001 WHERE professor_id = professor_id_del;
DELETE FROM professor WHERE professor_id = professor_id_del;
$$;


