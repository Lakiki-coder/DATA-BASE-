-- Users table to store customer information
-- CREATE DATABASE for_me; 
-- use for_me; 
-- CREATE TABLE users (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     password_hash VARCHAR(255) NOT NULL,
--     phone VARCHAR(20),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );
-- select *
-- from users

-- -- Addresses table to store user addresses
-- use for_me;
-- CREATE TABLE addresses (
--     id SERIAL PRIMARY KEY,
--     user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--     address_line1 VARCHAR(255) NOT NULL,
--     address_line2 VARCHAR(255),
--     city VARCHAR(100) NOT NULL,
--     state VARCHAR(100) NOT NULL,
--     zip_code VARCHAR(20) NOT NULL,
--     country VARCHAR(100) NOT NULL,
--     is_default BOOLEAN DEFAULT FALSE,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- select *
-- from addresses

-- -- Categories table for product categorization
use for_me;
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    parent_id INTEGER REFERENCES categories(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select *
from categories