CREATE or replace FUNCTION show_prod_cat2_plpgsql(catid integer) RETURNS TABLE(
prod_id integer,
category integer,
title character varying(50),
actor character varying(50),
price numeric(12,2),
special smallint,
common_prod_id integer
) AS $$
begin
RETURN QUERY SELECT * from products p where p.category = $1; 
end;
$$ LANGUAGE PLPGSQL;



-- In this function we carry out the same process as exercise 10, but in this case, we use the TABLE value to specify the data that we want to use in the function.
