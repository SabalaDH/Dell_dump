-- SQL Language --

CREATE OR REPLACE FUNCTION all_cat(category integer)
RETURNS SETOF products
AS $$
SELECT * from products where category = $1; 
$$ LANGUAGE SQL;




-- PLPGSQL Language --

CREATE OR REPLACE FUNCTION all_cat_plpgsql(category integer)
RETURNS SETOF products
AS $$
begin
RETURN QUERY SELECT * from products p where p.category = $1; 
end;
$$ LANGUAGE PLPGSQL;



-- In these functions we select all the products of a category (which will be defined by a parameter of the function)
