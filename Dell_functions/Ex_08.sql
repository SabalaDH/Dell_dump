-- SQL Language --

CREATE or replace FUNCTION avg_price_sql() 
RETURNS numeric AS $$
select avg(price) from products;
$$ LANGUAGE SQL;


-- PLPGSQL Language --

CREATE or replace FUNCTION avg_price_plpgsql() 
RETURNS numeric AS $$
begin
RETURN (select avg(price) from products);
end;
$$ LANGUAGE PLPGSQL;


-- NOT AVG --

CREATE or replace FUNCTION avg_price_noavg() 
RETURNS numeric AS $$
select SUM(price)/COUNT(price) from products;
$$ LANGUAGE SQL;




-- In these functions, we carry out the average price of the products table, one function in sql language and the other in plpgsql language. Finally we carry out another function without using avg (making the sum of all the prices and dividing this sum by the number of all the prices).
