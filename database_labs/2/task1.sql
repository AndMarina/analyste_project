DO
$$
DECLARE
    	summ real :=0.0;	
BEGIN
FOR i IN 1..100000 LOOP
	summ := summ + 999.99;
END LOOP;
RAISE NOTICE 'Summ = %;', summ;
RAISE NOTICE 'Diff = %;', 99999000.00 - summ;
END
$$ language plpgsql;


DO
$$
DECLARE
    	summ numeric :=0.0;	
BEGIN
FOR i IN 1..100000 LOOP
	summ := summ + 999.99;
END LOOP;
RAISE NOTICE 'Summ = %;', summ;
RAISE NOTICE 'Diff = %;', 99999000.00 - summ;
END
$$ language plpgsql;

DO
$$
DECLARE
    	summ money :=0.0;	
BEGIN
FOR i IN 1..100000 LOOP
	summ := summ + money(999.99);
END LOOP;
RAISE NOTICE 'Summ = %;', summ;
RAISE NOTICE 'Diff = %;', money(99999000.00) - summ;
END
$$ language plpgsql;
