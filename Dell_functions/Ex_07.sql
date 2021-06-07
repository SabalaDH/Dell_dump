-- SQL Language --

CREATE or replace FUNCTION show_prod_sql(INOUT prod_id integer, OUT title varchar(50), OUT price numeric) 
AS $$
select prod_id, title, price from products where prod_id = $1;
$$ LANGUAGE SQL;



-- PLPGSQL Language --

CREATE or replace FUNCTION show_prod_plpgsql(INOUT prod_id integer, OUT title varchar(50), OUT price numeric) 
RETURNS RECORD AS $$
begin
select p.prod_id, p.title, p.price into show_prod_plpgsql.prod_id, show_prod_plpgsql.title, show_prod_plpgsql.price from products p where p.prod_id = $1;
end;
$$ LANGUAGE PLPGSQL;

