INSERT INTO users (name, age)
SELECT 
  'User ' || generate_series(1, 1000000), 
  floor(random() * 100)::int;
