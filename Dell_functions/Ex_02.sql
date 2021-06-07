CREATE TYPE return_before_after AS (before int, after int);
CREATE or replace FUNCTION del_under18_2() RETURNS return_before_after AS
$$
DECLARE
	before integer;
	after integer;
BEGIN
SELECT count(*) INTO before FROM customers;
DELETE FROM customers WHERE age < 18;
SELECT count(*) INTO after FROM customers;
RETURN (before, after);
END;
$$ LANGUAGE plpgsql;



-- In this function we use the plpgsql language to eliminate customers under 18 years of age, returning with a count, the number of customers that existed before and after having eliminated them.
