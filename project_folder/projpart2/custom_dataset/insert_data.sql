-- Insert 20 million users
INSERT INTO users (name, age)
SELECT 
  'User ' || generate_series(1, 20000000), 
  floor(random() * 100)::int;

-- Insert 500,000 orders
INSERT INTO orders (user_id, total)
SELECT 
  floor(random() * 1000000)::int,
  round((random() * 500)::numeric, 2)
FROM generate_series(1, 500000);
