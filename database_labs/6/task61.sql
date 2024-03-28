-- 1 задание - Оценка работы индексов 
-- Добавьте в таблицу Test одно значение, измерив время данной операции.
EXPLAIN ANALYZE 
INSERT INTO Test(code_1,code_2) VALUES(md5(random()::text), md5(random()::text));

-- Измерьте время выполнения запроса, выводящего содержимого таблицы в отсортированном виде по столбцу CODE_1.
EXPLAIN ANALYZE
SELECT code_1
FROM Test
ORDER BY code_1 DESC;

-- Добавьте индекс на столбец CODE_1
CREATE INDEX test_index ON Test (code_1);