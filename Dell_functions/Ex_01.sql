create or replace function del_under18() 
returns setof integer as $$ 
delete from customers 
where age < 18 
returning customerid 
$$ language sql;

