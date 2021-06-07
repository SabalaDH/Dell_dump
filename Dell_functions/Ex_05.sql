-- Language SQL --

CREATE FUNCTION increase_price_sql(prod products) 
RETURNS numeric AS $$
update products set price=price*1.05 where prod.prod_id = prod_id returning price;
$$ LANGUAGE SQL;



-- Language PLPGSQL --

CREATE FUNCTION increase_price_plpgsql(prod products) 
RETURNS numeric AS $$
begin
update products set price=price*1.05 where prod.prod_id = prod_id;
RETURN (select price from products where prod.prod_id = prod_id);
end;
$$ LANGUAGE PLPGSQL;




-- In the following functions we perform an update of the price column of the products table, increasing the price by 5%.
