create database school;
use school;

-- creating 2 tables classes and school
create table classes(
class_id INT auto_increment primary key,
class_name varchar(50) not null
);

create table school(
students_id INT auto_increment primary key,
students_name varchar(50) not null,
class_id_of_students int,
-- foreign key refers to primary key of another table 
foreign key(class_id_of_students) references classes(class_id)
 ON UPDATE CASCADE
 ON DELETE SET NULL
);

-- adding values to both table 

INSERT INTO classes (class_name) VALUES ('Mathematics'), ('Science'), ('History');

INSERT INTO school (students_name, class_id_of_students) VALUES 
('Alice', 1),
('Bob', 2),
('Charlie', 1);

select * from school;


-- to check the foreign key run this command 
-- it check which foreign key is refrencing pk
SELECT 
    table_name, 
    column_name, 
    constraint_name, 
    referenced_table_name, 
    referenced_column_name
FROM 
    information_schema.key_column_usage
WHERE 
    referenced_table_name IS NOT NULL
    AND table_schema = 'school';
    
    
-- ON UPDATE CASCADE
-- Then all class_id_of_students in the school table whose class_id was 1 will automatically
-- be updated to 10.
UPDATE classes SET class_id = 10 WHERE class_id = 1;
select * from school;


-- all students in the school table who were in class 2 will have their 
-- class_id set to NULL, indicating that they are no longer assigned to a class.
DELETE FROM classes WHERE class_id = 2;
select * from school;
