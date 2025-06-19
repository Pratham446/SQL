-- A VIEW is a virtual table
CREATE TABLE std (
    student_id INT,
    name VARCHAR(50),
    marks INT
);
INSERT INTO std (student_id, name, marks) VALUES
(1, 'Alice', 85),
(2, 'Bob', 92),
(3, 'Charlie', 76),
(4, 'David', 60);

create view myview as select name,marks from std;
select * from std;

-- Why Use Views?
-- To simplify complex queries by giving them a name.
-- To hide sensitive columns from users.
-- To show only specific rows/columns from a table.


-- INDEX use for fast retrival 
-- show tables;
-- desc sample_data;
create index idx_name on sample_data(name);
select name from sample_data;

DROP INDEX idx_name on sample_data;
