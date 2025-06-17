-- Altering table conntet 
Alter table Data Rename column email to EMAIL;
desc data ;
select * from Data;

-- deleting column of a table
ALTER TABLE data DROP COLUMN new_agee; 
desc data;


-- adding a column in a table 

alter table data add column new_agee int(20) default True;
desc data;

-- modifying column name 
alter table data modify column new_age int(10) default True;
desc data;

-- changing the order of a column

ALTER TABLE data MODIFY COLUMN name varchar(100) AFTER admission_date;
desc data;

-- adding data in the table 

INSERT INTO data (id, EMAIL, admission_date, name, new_age) VALUES (1, 'prathamdarji@gmail.com', '2021-04-17', 'Pratham Darji', '20');
INSERT INTO data (id, EMAIL, admission_date, name, new_age) VALUES (2, 'prathamdarj@gmail.com', '2022-07-16', 'Rudra Jani', '26');
INSERT INTO data (id, EMAIL, admission_date, name, new_age) VALUES (3, 'prathamdar@gmail.com', '2023-06-19', 'trushank Jani', '24');
INSERT INTO data (id, EMAIL, admission_date, name, new_age) VALUES (4, 'prathamda@gmail.com', '2024-08-10', 'Bhavin parmar', '24');
INSERT INTO data (id, EMAIL, admission_date, name, new_age) VALUES (5, 'pratham@gmail.com', '2025-02-11', 'Nilesh Tiwari', '29');
select * from data;

-- insert all rows at once 

INSERT INTO data (id, EMAIL, admission_date, name, new_age) VALUES
(6, 'ananya.singh@example.com', '2024-12-05', 'Ananya Singh', '22'),
(7, 'rohan.patel@example.com', '2023-10-18', 'Rohan Patel', '25'),
(8, 'megha.verma@example.com', '2024-03-09', 'Megha Verma', '28'),
(9, 'vikas.mehra@example.com', '2025-01-21', 'Vikas Mehra', '31'),
(10, 'shruti.kapoor@example.com', '2023-11-15', 'Shruti Kapoor', '26'),
(11, 'arjun.sharma@example.com', '2024-07-22', 'Arjun Sharma', '24'),
(12, 'deepa.rana@example.com', '2025-04-17', 'Deepa Rana', '27'),
(13, 'sachin.jain@example.com', '2024-06-30', 'Sachin Jain', '30'),
(14, 'neha.malik@example.com', '2025-05-12', 'Neha Malik', '23');

select * from data;

