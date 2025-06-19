-- The UNION operator is used to combine the result sets of two or more SELECT statements into a single result.
CREATE TABLE class_A (
    name VARCHAR(50)
);

INSERT INTO class_A (name) VALUES
('Alice'),
('Bob'),
('Charlie');

CREATE TABLE class_B (
    name VARCHAR(50)
);

INSERT INTO class_B (name) VALUES
('Bob'),
('David'),
('Eva');

-- By default, UNION removes duplicate rows.
SELECT name FROM class_A
UNION
SELECT name FROM class_B;

-- If you want to keep duplicates, use UNION ALL
SELECT name FROM class_A
UNION ALL
SELECT name FROM class_B;