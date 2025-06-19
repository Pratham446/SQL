-- subqueries 
CREATE TABLE db (
    id INT,
    name VARCHAR(50),
    marks INT
    
);
INSERT INTO db (id, name, marks) VALUES
(1, 'Alice', 85),
(2, 'Bob', 92),
(3, 'Charlie', 76),
(4, 'David', 60);

select * from db;

-- 1. Subquery in WHERE clause
select name ,marks from db
where marks >(select avg(marks) from db);

-- 2. Subquery in SELECT clause

SELECT name, marks,
    (SELECT AVG(marks) FROM db) AS class_average
FROM db;