create or replace function del_under18() 
returns setof integer as $$ 
delete from customers 
where age < 18 
returning customerid 
$$ language sql;

-- With this function we check that the age of the customers, and if it is less than 18, are eliminated from the column, returning the ID of the deleted customer.
