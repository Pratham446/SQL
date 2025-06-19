-- Stored Procedures in MySQl
-- To avoid repeating the same SQL logic in multiple places
-- To encapsulate complex business logic inside the database

-- When you create a stored procedure, you need to temporarily change the SQL statement
--  delimiter from ; to something else like // or $$.
-- Why change the DELIMITER?
-- MySQL ends a command at the first ;.
-- Since stored procedures contain multiple SQL statements (each ending in ;), 
-- we need to tell MySQL not to end the procedure too early.
-- So we temporarily change the delimiter to something else—then switch it back.


-- Change the delimiter from ; to $$
DELIMITER $$

-- Create a procedure
CREATE PROCEDURE hello_message()
BEGIN
   SELECT 'Hello from Stored Procedure!';
END $$

-- Change the delimiter back to ;
DELIMITER ;

call hello_message();