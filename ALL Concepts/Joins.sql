-- Inner joins combine records from two tables whenever there are matching values in a 
-- field common to both tables
-- INNER JOINS includes only the row that have matching values in both table 

-- syntax 

-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name = table2.column_name;

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create scores table
CREATE TABLE scores (
    score_id INT,
    subject VARCHAR(50),
    marks INT
);
-- Insert data into students
INSERT INTO students (student_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');
-- Insert data into scores
INSERT INTO scores (score_id, subject, marks) VALUES
(1, 'Math', 85),
(2, 'Math', 90),
(4, 'Math', 75);
select * from scores;
select * from students;

select students.student_id ,students.name,scores.subject,scores.marks
from students
inner join scores
on students.student_id =scores.score_id;


-- LEFT JOINS makes sure that to show the Full data of left table if the values are null
-- then to it will show all the data of left table

select students.student_id ,students.name,scores.subject,scores.marks
from students
left join scores
on students.student_id =scores.score_id;

-- right join same as left join but opposite 
select students.student_id ,students.name,scores.subject,scores.marks
from students
right join scores
on students.student_id =scores.score_id;


-- cross joins combines every row in first table with every row in second table 
select students.student_id ,students.name,scores.subject,scores.marks
from students
cross join scores