INSERT INTO customers (
    first_name,
    last_name,
    email,
    city,
    registration_date
)
VALUES
('Martin', 'Novak', 'martin.novak@email.com', 'Bratislava', '2024-01-10'),
('Peter', 'Kovac', 'peter.kovac@email.com', 'Kosice', '2024-01-15'),
('Jana', 'Horvathova', 'jana.horvathova@email.com', 'Zilina', '2024-02-01'),
('Lucia', 'Mikulasova', 'lucia.m@email.com', 'Nitra', '2024-02-10'),
('Marek', 'Varga', 'marek.v@email.com', 'Presov', '2024-02-15'),
('Eva', 'Kralova', 'eva.k@email.com', 'Trnava', '2024-03-01'),
('Tomas', 'Urban', 'tomas.u@email.com', 'Bratislava', '2024-03-05'),
('Zuzana', 'Balazova', 'zuzana.b@email.com', 'Kosice', '2024-03-20'),
('Andrej', 'Klein', 'andrej.k@email.com', 'Nitra', '2024-04-01'),
('Monika', 'Jurikova', 'monika.j@email.com', 'Zilina', '2024-04-12');

INSERT INTO products (
    product_name,
    category,
    unit_price
)
VALUES
('Laptop Pro 15', 'Electronics', 1299.99),
('Wireless Mouse', 'Electronics', 29.99),
('Mechanical Keyboard', 'Electronics', 89.99),

('Coffee Maker', 'Home', 149.99),
('Vacuum Cleaner', 'Home', 249.99),
('Air Fryer', 'Home', 119.99),

('Running Shoes', 'Sports', 99.99),
('Yoga Mat', 'Sports', 24.99),
('Dumbbell Set', 'Sports', 79.99),

('Monitor 27"', 'Electronics', 299.99),
('Office Chair', 'Home', 199.99),
('Fitness Tracker', 'Sports', 149.99);

INSERT INTO orders (
    customer_id,
    order_date,
    order_status
)
VALUES
(1, '2024-04-10', 'Completed'),
(2, '2024-04-11', 'Completed'),
(3, '2024-04-15', 'Completed'),
(1, '2024-05-01', 'Completed'),
(4, '2024-05-03', 'Completed'),
(5, '2024-05-04', 'Completed'),
(6, '2024-05-10', 'Completed'),
(2, '2024-05-15', 'Completed'),
(7, '2024-05-18', 'Completed'),
(8, '2024-05-20', 'Completed'),
(9, '2024-06-01', 'Completed'),
(10, '2024-06-03', 'Completed'),
(3, '2024-06-10', 'Completed'),
(4, '2024-06-15', 'Completed'),
(5, '2024-06-20', 'Completed');

INSERT INTO order_items (
    order_id,
    product_id,
    quantity,
    unit_price
)
VALUES
(1, 1, 1, 1299.99),
(1, 2, 1, 29.99),

(2, 7, 1, 99.99),
(2, 8, 2, 24.99),

(3, 4, 1, 149.99),

(4, 10, 1, 299.99),
(4, 2, 1, 29.99),

(5, 11, 1, 199.99),

(6, 3, 1, 89.99),

(7, 5, 1, 249.99),

(8, 1, 1, 1299.99),

(9, 12, 1, 149.99),

(10, 6, 1, 119.99),

(11, 8, 3, 24.99),

(12, 7, 2, 99.99),

(13, 10, 1, 299.99),

(14, 4, 1, 149.99),

(15, 5, 1, 249.99);