-- The GROUP BY clause is used when you want to group rows that have the same values in specified columns

CREATE TABLE dbb (
    id INT,
    name VARCHAR(50),
    subject VARCHAR(50),
    marks INT
);
INSERT INTO dbb (id, name, subject, marks) VALUES
(1, 'Alice', 'Math', 85),
(2, 'Bob', 'english', 90),
(3, 'Alice', 'Science', 78),
(4, 'Bob', 'Science', 82),
(5, 'Charlie', 'Math', 70),
(6, 'Charlie', 'english', 75);

SELECT subject, AVG(marks) AS average_marks
FROM dbb
GROUP BY subject;

select count(id),subject
from dbb
group by subject;


select count(id),subject
from dbb
group by subject
order by count(id) asc;


