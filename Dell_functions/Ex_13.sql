CREATE OR REPLACE FUNCTION mySum (int, int) RETURNS int AS $$ 
 SELECT $1 + $2 
 $$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION mySum (numeric, numeric) RETURNS numeric AS $$ 
 SELECT $1 + $2 
 $$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION mySum (text, text) RETURNS text AS $$ 
 SELECT $1 || $2
 $$ LANGUAGE SQL;



-- We define several functions to perform sums, one with integer values, another with a decimal value and another with a string value.
