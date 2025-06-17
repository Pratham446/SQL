-- Constraints - Prevent invalid, duplicate, or null data

-- Ensures that a column cannot contain NULL values.
CREATE TABLE employees (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL
);

-- Ensures that all values in a column are distinct (no duplicates).
CREATE TABLE users (
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE
);


-- DEFAULT Constraint
-- Sets a default value for a column if none is provided during insert
CREATE TABLE products (
    name VARCHAR(100),
    status VARCHAR(20) DEFAULT 'in_stock'
);
show tables;
select * from products;
desc products;

-- CHECK Constraint
-- Validates that values in a column meet a specific condition
CREATE TABLE accounts (
    id INT,
    balance DECIMAL(10,2) CHECK (balance >= 0)
);
desc accounts;



