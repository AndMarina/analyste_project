-- Задание 1
-- Напишите запрос по варианту
-- Напишите скрипт, выводящий количество всех оценок 5, 4, 3, 2 в единой таблице


-- запрос, который выводит таблицу с оценками и их количеством
SELECT mark, COUNT(mark) 
FROM field_comprehension 
GROUP BY mark

-- скрипт, который выводит оценку и количество
do
$$
DECLARE 
	mark_count record;
BEGIN
   for i in REVERSE 5..2 loop
        select mark, count(*) into mark_count
        from field_comprehension
        group by mark
        having mark = i;

        raise notice 'Оценка, Кол-во: %', mark_count;
   end loop;
END
$$;

-- второй вариант скрипта с использованием курсора
do
$$
DECLARE 
	mark_count record;
BEGIN
   for mark_count in  
        select mark, count(mark)
        from field_comprehension
        group by mark
		loop
        raise notice 'Оценка, Кол-во: %', mark_count;
   end loop;
END
$$;
