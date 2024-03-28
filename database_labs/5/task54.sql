-- Задание 4
-- Создайте временную таблицу, содержащую 10 лучших студентов 4-го курса института МПСУ 
-- (имеющих самую высокую среднюю оценку), окончивших учебу без троек. 
-- Отсортируйте ее по убыванию среднего балла. 
-- Таблица должна содержать ФИО, номер студенческого билета и средний балл.

-- Создание таблицы
CREATE TABLE [ IF NOT EXISTS ] имя_таблицы 
( 
	имя_столбца тип_данных [ ограничение_столбца [ ... ] ]
	[ ограничение_таблицы ]
);

-- Группы 4 курса института МПСУ
SELECT students_group_number
FROM students_group
WHERE (students_group_number LIKE '%-4%') AND (structural_unit_number = 1);

-- Студенты (их id) 4 курса института МПСУ
SELECT student.student_id, student.students_group_number
FROM student, 
(SELECT students_group_number
FROM students_group
WHERE (students_group_number LIKE '%-4%') AND (structural_unit_number = 1)) as students_group_number_4_mpsu
WHERE student.students_group_number = students_group_number_4_mpsu.students_group_number

-- ID дести лучших студентов 4-го курса института МПСУ 
SELECT field_comprehension.student_id, AVG(mark) as avg_mark
FROM field_comprehension,
    (
        SELECT student.student_id, student.students_group_number
        FROM student, 
        (
            SELECT students_group_number
            FROM students_group
            WHERE (students_group_number LIKE '%-4%') AND (structural_unit_number = 1)
        ) as students_group_number_4_mpsu
        WHERE student.students_group_number = students_group_number_4_mpsu.students_group_number
    ) as id_students_group_number_4_mpsu
 WHERE field_comprehension.student_id = id_students_group_number_4_mpsu.student_id AND mark <> 3
 GROUP BY field_comprehension.student_id
 ORDER BY AVG(mark) DESC
 LIMIT 10

-- Скрещиваю вывод запроса выше и таблицы student (где есть имена и фамилии)
SELECT student.student_id, student.surname, student.name, student.patronymic, student_id_top.avg_mark
FROM student 
INNER JOIN
    (
        SELECT field_comprehension.student_id, AVG(mark) as avg_mark
        FROM field_comprehension,
        (
            SELECT student.student_id, student.students_group_number
            FROM student, 
            (
                SELECT students_group_number
                FROM students_group
                WHERE (students_group_number LIKE '%-4%') AND (structural_unit_number = 1)
            ) as students_group_number_4_mpsu
            WHERE student.students_group_number = students_group_number_4_mpsu.students_group_number
        ) as id_students_group_number_4_mpsu
        WHERE field_comprehension.student_id = id_students_group_number_4_mpsu.student_id AND mark <> 3
        GROUP BY field_comprehension.student_id
        ORDER BY AVG(mark) DESC
        LIMIT 10
    ) as student_id_top
ON student.student_id = student_id_top.student_id
ORDER BY student_id_top.avg_mark DESC

-- Создание таблицы
CREATE TABLE top_student_4_kurs_mpsu AS 
SELECT student.student_id, student.surname, student.name, student.patronymic, student_id_top.avg_mark
FROM student 
INNER JOIN
    (
        SELECT field_comprehension.student_id, AVG(mark) as avg_mark
        FROM field_comprehension,
        (
            SELECT student.student_id, student.students_group_number
            FROM student, 
            (
                SELECT students_group_number
                FROM students_group
                WHERE (students_group_number LIKE '%-4%') AND (structural_unit_number = 1)
            ) as students_group_number_4_mpsu
            WHERE student.students_group_number = students_group_number_4_mpsu.students_group_number
        ) as id_students_group_number_4_mpsu
        WHERE field_comprehension.student_id = id_students_group_number_4_mpsu.student_id AND mark <> 3
        GROUP BY field_comprehension.student_id
        ORDER BY AVG(mark) DESC
        LIMIT 10
    ) as student_id_top
ON student.student_id = student_id_top.student_id
ORDER BY student_id_top.avg_mark DESC