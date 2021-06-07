--- First Function ----

CREATE FUNCTION insert_category1_sql(pcategory integer, pname varchar) 
RETURNS void AS $$
BEGIN
INSERT INTO categories (category, categoryname) values (pcategory, pname);
end;
$$ LANGUAGE plpgsql;


--- Second Function ---

CREATE FUNCTION insert_category2_sql(integer, varchar)
RETURNS void AS $$
BEGIN
INSERT INTO categories (category, categoryname) values ($1, $2);
end;
$$ LANGUAGE plpgsql;



--- Third Function ---

CREATE FUNCTION insert_category3_sql(category integer, categoryname varchar) 
RETURNS void AS $$
BEGIN
INSERT INTO categories (category, categoryname) values (category, categoryname);
end;
$$ LANGUAGE plpgsql;



--- Fourth Function --- 

CREATE FUNCTION insert_category4_sql(pcategory categories)
RETURNS void AS $$
BEGIN
INSERT INTO categories VALUES (pcategory.category, pcategory.categoryname);
end;
$$ LANGUAGE plpgsql;






--  In the following functions we insert data declaring it in different ways, the first one with named parameters, the second one with numbered parameters, the third one with parameters with the same name that the table fields (category, categoryname), and the last one with only a single parameter (data type 'categories').
