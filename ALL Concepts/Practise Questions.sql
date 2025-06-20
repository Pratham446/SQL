use pratham;

CREATE TABLE Productss (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

-- Insert sample data into Products table

INSERT INTO Productss (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);



CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10, 2)
);
INSERT INTO sales (sale_id, product_id, quantity_sold, sale_date, total_price)
VALUES (1, 101, 5, '2024-01-01', 2500.00);

INSERT INTO sales (sale_id, product_id, quantity_sold, sale_date, total_price)
VALUES (2, 102, 3, '2024-01-02', 900.00);

INSERT INTO sales (sale_id, product_id, quantity_sold, sale_date, total_price)
VALUES (3, 103, 2, '2024-01-02', 60.00);

INSERT INTO sales (sale_id, product_id, quantity_sold, sale_date, total_price)
VALUES (4, 104, 4, '2024-01-03', 80.00);

INSERT INTO sales (sale_id, product_id, quantity_sold, sale_date, total_price)
VALUES (5, 105, 6, '2024-01-03', 90.00);


-- SQL Practice Questions 

-- Retrieve all columns from the Sales table-- 
select * from sales;

-- Retrieve the product_name and unit_price from the Products table.
select product_name,unit_price from productss;

-- 3. Retrieve the sale_id and sale_date from the Sales table.

select sale_id,sale_date from sales;

-- 4. Filter the Sales table to show only sales with a total_price greater than $100.
select * from sales where total_price>100;

-- 5. Filter the Products table to show only products in the 'Electronics' category.
select * from productss where category='Electronics';

-- 6. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.
select * from sales;

select sale_id,total_price from sales where sale_date='2024-01-03';

-- 7. Retrieve the product_id and product_name from the Products table for products with a unit_price greater than $100.

select product_id,product_name from productss where unit_price>100;

-- 8. Calculate the total revenue generated from all sales in the Sales table.

select sum(total_price) from sales;


-- 9. Calculate the average unit_price of products in the Products table.
select * from productss;
select avg(unit_price) from productss;

-- 10. Calculate the total quantity_sold from the Sales table.-- 
select * from sales;
select sum(quantity_sold) from sales;

-- 11. Count Sales Per Day from the Sales table
select sale_date,count(*) from sales 
group by sale_date;
select * from productss;

-- 12. Retrieve product_name and unit_price from the Products table with the Highest Unit Price

select product_name,unit_price from productss order by unit_price desc limit 1;

-- 13. Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a quantity_sold greater than 4.
select sale_id,product_id,total_price from sales where quantity_sold>4;

-- 14. Retrieve the product_name and unit_price from the Products table, ordering the results by unit_price in descending order.

select product_name,unit_price from productss order by unit_price desc;

-- 15. Retrieve the total_price of all sales, rounding the values to two decimal places.
select round(sum(total_price),2) from sales ;

-- 16. Calculate the average total_price of sales in the Sales table.
select * from sales;

select avg(total_price) from sales;

-- 17. Retrieve the sale_id and sale_date from the Sales table, formatting the sale_date as 'YYYY-MM-DD'.
select sale_id,DATE_FORMAT(sale_date, '%Y-%m-%d') from sales;

-- 18. Calculate the total revenue generated from sales of products in the 'Electronics' category.

select sum(total_price) from sales
join productss on sales.product_id=productss.product_id # sales.product_id=productss.product_id is selected because it is common in both table is used to connect matching products in both tables based on their product_id
where category='Electronics';
 
 -- 19. Retrieve the product_name and unit_price from the Products table, filtering the unit_price to show only values between $20 and $600.

select * from sales;

select * from productss;

select product_name,unit_price from productss where unit_price between 20 and 600;

-- 20. Retrieve the product_name and category from the Products table, ordering the results by category in ascending order.
select product_name,category from productss order by category asc;

-- SQL Practice Exercises for Intermediate
select * from sales;
select * from productss;
-- 1. Calculate the total quantity_sold of products in the 'Electronics' category.

select sum(quantity_sold) from sales
join productss on sales.product_id=productss.product_id # sales.product_id=productss.product_id is selected because it is common in both table is used to connect matching products in both tables based on their product_id
where category='Electronics';

-- 2. Retrieve the product_name and total_price from the Sales table, calculating the total_price as quantity_sold multiplied by unit_price.
select productss.product_name,sales.total_price from sales
join productss 
on sales.product_id=productss.product_id
where total_price=quantity_sold*unit_price;

-- 3. Identify the Most Frequently Sold Product from Sales table

select product_id,count(*) from sales
group by product_id
limit 1;

-- 4. Find the Products Not Sold from Products table
SELECT product_id, product_name 
FROM Productss

where product_id NOT IN (SELECT product_id FROM Sales);

-- 5. Calculate the total revenue generated from sales for each product category.
select * from sales;
select * from productss;

select sum(total_price) from sales 
join productss
on sales.product_id=productss.product_id
group by category;


-- 6. Find the product category with the highest average unit price.
select category from productss
group by category
order by avg(unit_price) desc;

-- Identify products with total sales exceeding 30
select * from sales;
select * from productss;

select productss.product_name from sales
join productss
on sales.product_id=productss.product_id
group by productss.product_name
having sum(total_price)>30;	

-- 8. Count the number of sales made in each month.
select * from sales;
select DATE_FORMAT(sales.sale_date,'%Y-%m')as month,count(*) as salesCount from sales
group by month;

-- 9. Retrieve Sales Details for Products with 'Smart' in Their Name

select * from productss
join sales
on productss.product_id=sales.product_id
where product_name like '%Smart%';

-- 10. Determine the average quantity sold for products with a unit price greater than $100.
-- select * from sales;

select avg(quantity_sold) from sales
join productss
on productss.product_id=sales.product_id
where unit_price>100;

-- 11. Retrieve the product name and total sales revenue for each product.
select * from sales;
select productss.product_name,sum(sales.total_price) from sales
join productss
on productss.product_id=sales.product_id
group by product_name;

-- 12. List all sales along with the corresponding product names.

select * from productss;
select sales.sale_id,productss.product_name from sales
join productss
on productss.product_id=sales.product_id





