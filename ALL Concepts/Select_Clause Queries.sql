-- Selecting Data from a Table
select * from data;

select * from data where new_age >25;

select * from data where new_age between 25 and 29;

select * from data where name LIKE 'P%';

select * from data where new_age is Null;

select * from data where new_age is Not Null;


-- Sorting Results with ORDER BY

SELECT * FROM data ORDER BY new_age ASC;

SELECT * FROM data ORDER BY name DESC ;

-- Limiting Results with LIMIT
SELECT * FROM data LIMIT 5;

-- Matching Dates with _ Wildcard

SELECT * FROM data
WHERE  admission_date LIKE '2025-__-__';




