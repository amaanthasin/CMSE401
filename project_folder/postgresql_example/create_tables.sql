CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT
);

-- Index for optimization
CREATE INDEX idx_age ON users(age);
