do
$$
DECLARE 
	num_of_5 INTEGER;
	num_of_4 INTEGER;
	num_of_3 INTEGER;
	num_of_2 INTEGER;
BEGIN
	SELECT COUNT(CASE WHEN mark=5 THEN 1 END) 
	INTO num_of_5
	FROM field_comprehension;
	raise notice 'Количество 5: %', num_of_5;
	
	SELECT COUNT(CASE WHEN mark=4 THEN 1 END) 
	INTO num_of_4
	FROM field_comprehension;
	raise notice 'Количество 4: %', num_of_4;
	
	SELECT COUNT(CASE WHEN mark=3 THEN 1 END) 
	INTO num_of_3
	FROM field_comprehension;
	raise notice 'Количество 3: %', num_of_3;
	
	SELECT COUNT(CASE WHEN mark=2 THEN 1 END) 
	INTO num_of_2
	FROM field_comprehension;
	raise notice 'Количество 2: %', num_of_2;
END
$$;



