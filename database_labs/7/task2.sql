CREATE PROCEDURE add_proffesor(professor_id bigint, surname char(30), name char(30), patronymic char(30), 
							   degree varchar(15), academic_title varchar(40),current_position varchar(40),
							  experience integer, salary money, phone varchar(30), structural_unit_number integer, 
							   contract_number integer, wage_rate numeric(3,2))
LANGUAGE SQL
AS $$
INSERT INTO professor (professor_id, surname, name, patronymic, degree, academic_title, сurrent_position,
							  experience, salary, phone) VALUES (professor_id, surname, name, patronymic, degree, academic_title,current_position,
							  experience, salary, phone);
INSERT INTO employment (structural_unit_number, professor_id, contract_number, wage_rate) 
VALUES (structural_unit_number, professor_id, contract_number, wage_rate);
$$;