-- Average price of all the products. --

select * from avg_price_sql();




-- Title and price of products that cost more than the average product price --

select title, price from products where price > avg_price_sql();




-- Title and price of products that cost more than a 20% to the average price. --

select title, price from products where price > 1.2 * avg_price_sql();





-- Title and price of products that theirs price is equal to the average price to 20% (ie those that theirs price is between 80% and 120% of the average price). --



select title, price from products where
ABS(price-avg_price_sql()) > 0.2 * avg_price_sql();

