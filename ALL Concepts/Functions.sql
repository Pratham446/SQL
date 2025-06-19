-- 1. Create a sample table
CREATE TABLE sample_data (
    id INT,
    name VARCHAR(50),
    score INT,
    created_at DATE
);

-- 2. Insert sample data
INSERT INTO sample_data (id, name, score, created_at) VALUES
(1, 'Alice', -45, '2024-12-01'),
(2, 'BOB', 87, '2025-01-15'),
(3, 'Charlie', -32, '2025-06-17');

-- ALL FUNCTIONS
select concat(id,' ',name)as idname from sample_data;

select now();  -- show date and time 

select name ,length(name) as len from sample_data;-- Find length of a string (in bytes)

SELECT ROUND(12.6789, 2);

SELECT DATEDIFF('2025-07-01', '2025-05-01'); -- show 61 days of diffrence 

select current_date();
select current_time();
select rand();

