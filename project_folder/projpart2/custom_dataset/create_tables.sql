-- Drop existing tables if they exist
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS users;

-- Create users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT
);

-- Create orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT,
    total NUMERIC
);

-- Index for optimization (can be disabled in query script)
CREATE INDEX idx_orders_user_id ON orders(user_id);
