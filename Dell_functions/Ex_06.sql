-- Language SQL --

CREATE FUNCTION show_cust_sql(id integer) 
RETURNS customers AS $$
select * from customers where customerid = $1;
$$ LANGUAGE SQL;



-- Language PLPGSQL --

CREATE or replace FUNCTION show_cust_plpgsql(id integer) 
RETURNS customers AS $$
declare customers record;
begin
select * into customers from customers where customerid = $1;
RETURN customers;
end;
$$ LANGUAGE PLPGSQL;





-- We create 2 functions to obtain all the data from the different columns of the customers table, being able to choose according to the parameter that we pass through the function.
