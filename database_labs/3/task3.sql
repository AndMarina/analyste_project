-- 5 вариант
SELECT students_group.students_group_number, structural_unit.full_title
FROM students_group, structural_unit
WHERE students_group.structural_unit_number = structural_unit.structural_unit_id

-- 1 вариант
SELECT professor.professor_id, student.student_id
FROM professor LEFT JOIN student
ON professor.professor_id = student.student_id
