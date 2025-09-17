-- Insert Customers
INSERT INTO customers (name, email, city) VALUES
('Alice Johnson', 'alice@example.com', 'New York'),
('Bob Smith', 'bob@example.com', 'Los Angeles'),
('Charlie Lee', 'charlie@example.com', 'Chicago'),
('Diana Prince', 'diana@example.com', 'San Francisco'),
('Ethan Brown', 'ethan@example.com', 'Houston');

-- Insert Products
INSERT INTO products (name, category, price_cents) VALUES
('Laptop', 'Electronics', 120000),
('Smartphone', 'Electronics', 80000),
('Headphones', 'Accessories', 2000),
('Office Chair', 'Furniture', 15000),
('Coffee Mug', 'Kitchen', 999),
('Backpack', 'Accessories', 5000);

-- Insert Orders
INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2025-09-01', 'delivered'),
(2, '2025-09-02', 'delivered'),
(3, '2025-09-03', 'shipped'),
(1, '2025-09-04', 'pending'),
(4, '2025-09-05', 'delivered');

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price_cents) VALUES
(1, 1, 1, 120000),  -- Alice buys Laptop
(1, 3, 2, 2000),    -- Alice also buys 2 Headphones
(2, 2, 1, 80000),   -- Bob buys Smartphone
(2, 5, 3, 999),     -- Bob buys 3 Coffee Mugs
(3, 4, 1, 15000),   -- Charlie buys Office Chair
(4, 6, 1, 5000),    -- Alice again, buys Backpack
(5, 2, 2, 80000);   -- Diana buys 2 Smartphones
