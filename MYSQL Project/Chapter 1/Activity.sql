-- CREATE DATABASE user_db;
-- use salesdb; -- Selecting the database i want to use

-- select *
-- from customers;
use user_db;
-- CREATE TABLE user (
-- 	id INT PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100) UNIQUE
-- );
    
SELECT id, name, email
from user;