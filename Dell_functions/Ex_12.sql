CREATE or replace FUNCTION show_prod_cat_plpgsql(refcursor) RETURNS refcursor AS $$
BEGIN
OPEN $1 FOR SELECT * from products;
RETURN $1;
END;
$$ LANGUAGE PLPGSQL;



-- In this exercise we create a function with cursors, to encapsulate the query and thus be able to return several lines at the same time.
