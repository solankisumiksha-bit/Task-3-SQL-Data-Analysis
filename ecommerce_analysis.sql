-- ============================================================
-- TASK 3: SQL FOR DATA ANALYSIS
-- Project: E-Commerce Data Analysis
-- Database: ecommerce_db
-- Tool: MySQL
-- ============================================================

-- ============================================================
-- 1. CREATE DATABASE
-- ============================================================

DROP DATABASE IF EXISTS ecommerce_db;

CREATE DATABASE ecommerce_db;

USE ecommerce_db;

-- ============================================================
-- 2. CREATE TABLES
-- ============================================================

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);

-- ============================================================
-- 3. INSERT CUSTOMER DATA
-- ============================================================

INSERT INTO
    customers
VALUES (
        1,
        'Rahul Sharma',
        'rahul@gmail.com',
        'Mumbai',
        'India',
        '2025-01-15'
    ),
    (
        2,
        'Priya Patel',
        'priya@gmail.com',
        'Ahmedabad',
        'India',
        '2025-02-10'
    ),
    (
        3,
        'Amit Verma',
        'amit@gmail.com',
        'Delhi',
        'India',
        '2025-03-05'
    ),
    (
        4,
        'Sneha Shah',
        'sneha@gmail.com',
        'Mumbai',
        'India',
        '2025-03-18'
    ),
    (
        5,
        'Rohan Mehta',
        'rohan@gmail.com',
        'Pune',
        'India',
        '2025-04-12'
    ),
    (
        6,
        'Neha Joshi',
        'neha@gmail.com',
        'Bangalore',
        'India',
        '2025-05-20'
    ),
    (
        7,
        'Karan Singh',
        'karan@gmail.com',
        'Delhi',
        'India',
        '2025-06-08'
    ),
    (
        8,
        'Pooja Desai',
        'pooja@gmail.com',
        'Surat',
        'India',
        '2025-06-25'
    ),
    (
        9,
        'Vikas Gupta',
        'vikas@gmail.com',
        'Mumbai',
        'India',
        '2025-07-11'
    ),
    (
        10,
        'Anjali Rao',
        'anjali@gmail.com',
        'Pune',
        'India',
        '2025-08-03'
    );

-- ============================================================
-- 4. INSERT PRODUCT DATA
-- ============================================================

INSERT INTO
    products
VALUES (
        101,
        'Laptop',
        'Electronics',
        55000.00,
        25
    ),
    (
        102,
        'Smartphone',
        'Electronics',
        25000.00,
        40
    ),
    (
        103,
        'Headphones',
        'Electronics',
        2500.00,
        100
    ),
    (
        104,
        'Keyboard',
        'Electronics',
        1500.00,
        80
    ),
    (
        105,
        'Mouse',
        'Electronics',
        800.00,
        120
    ),
    (
        106,
        'Backpack',
        'Fashion',
        1800.00,
        60
    ),
    (
        107,
        'T-Shirt',
        'Fashion',
        900.00,
        150
    ),
    (
        108,
        'Shoes',
        'Fashion',
        3500.00,
        70
    ),
    (
        109,
        'Watch',
        'Accessories',
        5000.00,
        45
    ),
    (
        110,
        'Wallet',
        'Accessories',
        1200.00,
        90
    );

-- ============================================================
-- 5. INSERT ORDER DATA
-- ============================================================

INSERT INTO
    orders
VALUES (
        1001,
        1,
        '2025-08-01',
        57500.00,
        'Delivered'
    ),
    (
        1002,
        2,
        '2025-08-03',
        27500.00,
        'Delivered'
    ),
    (
        1003,
        3,
        '2025-08-05',
        4300.00,
        'Delivered'
    ),
    (
        1004,
        4,
        '2025-08-07',
        55000.00,
        'Shipped'
    ),
    (
        1005,
        5,
        '2025-08-10',
        4400.00,
        'Delivered'
    ),
    (
        1006,
        6,
        '2025-08-12',
        8500.00,
        'Processing'
    ),
    (
        1007,
        7,
        '2025-08-15',
        3500.00,
        'Delivered'
    ),
    (
        1008,
        8,
        '2025-08-18',
        6800.00,
        'Cancelled'
    ),
    (
        1009,
        9,
        '2025-08-20',
        25800.00,
        'Delivered'
    ),
    (
        1010,
        10,
        '2025-08-22',
        6200.00,
        'Shipped'
    ),
    (
        1011,
        1,
        '2025-08-25',
        2500.00,
        'Delivered'
    ),
    (
        1012,
        3,
        '2025-08-27',
        900.00,
        'Processing'
    );

-- ============================================================
-- 6. INSERT ORDER ITEMS
-- ============================================================

INSERT INTO
    order_items
VALUES (1, 1001, 101, 1, 55000.00),
    (2, 1001, 105, 1, 800.00),
    (3, 1001, 104, 1, 1500.00),
    (4, 1002, 102, 1, 25000.00),
    (5, 1002, 103, 1, 2500.00),
    (6, 1003, 103, 1, 2500.00),
    (7, 1003, 105, 1, 800.00),
    (8, 1003, 107, 1, 900.00),
    (9, 1004, 101, 1, 55000.00),
    (10, 1005, 106, 1, 1800.00),
    (11, 1005, 108, 1, 3500.00),
    (12, 1006, 109, 1, 5000.00),
    (13, 1006, 110, 1, 1200.00),
    (14, 1006, 103, 1, 2500.00),
    (15, 1007, 108, 1, 3500.00),
    (16, 1008, 109, 1, 5000.00),
    (17, 1008, 106, 1, 1800.00),
    (18, 1009, 102, 1, 25000.00),
    (19, 1009, 105, 1, 800.00),
    (20, 1010, 109, 1, 5000.00),
    (21, 1010, 107, 1, 900.00),
    (22, 1010, 105, 1, 800.00),
    (23, 1011, 103, 1, 2500.00),
    (24, 1012, 107, 1, 900.00);

-- ============================================================
-- 7. BASIC SELECT QUERY
-- ============================================================

-- Display all customers
SELECT * FROM customers;

-- Display all products
SELECT * FROM products;

-- Display all orders
SELECT * FROM orders;

-- ============================================================
-- 8. SELECT SPECIFIC COLUMNS
-- ============================================================

SELECT customer_id, customer_name, city FROM customers;

-- ============================================================
-- 9. WHERE CLAUSE
-- ============================================================

-- Customers from Mumbai
SELECT * FROM customers WHERE city = 'Mumbai';

-- Products costing more than 5000
SELECT * FROM products WHERE price > 5000;

-- Delivered orders
SELECT * FROM orders WHERE status = 'Delivered';

-- ============================================================
-- 10. ORDER BY
-- ============================================================

-- Products from highest to lowest price
SELECT * FROM products ORDER BY price DESC;

-- Customers alphabetically
SELECT * FROM customers ORDER BY customer_name ASC;

-- Orders from highest amount
SELECT * FROM orders ORDER BY total_amount DESC;

-- ============================================================
-- 11. GROUP BY
-- ============================================================

-- Number of customers by city
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY
    city;

-- Number of orders by status
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY
    status;

-- Average product price by category
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY
    category;

-- ============================================================
-- 12. AGGREGATE FUNCTIONS
-- ============================================================

-- Total sales
SELECT SUM(total_amount) AS total_sales
FROM orders
WHERE
    status != 'Cancelled';

-- Average order value
SELECT AVG(total_amount) AS average_order_value
FROM orders
WHERE
    status != 'Cancelled';

-- Total number of orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Maximum order amount
SELECT MAX(total_amount) AS highest_order FROM orders;

-- Minimum order amount
SELECT MIN(total_amount) AS lowest_order FROM orders;

-- ============================================================
-- 13. INNER JOIN
-- ============================================================

SELECT o.order_id, c.customer_name, o.order_date, o.total_amount, o.status
FROM orders o
    INNER JOIN customers c ON o.customer_id = c.customer_id;

-- ============================================================
-- 14. LEFT JOIN
-- ============================================================

SELECT c.customer_id, c.customer_name, o.order_id, o.total_amount
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- ============================================================
-- 15. RIGHT JOIN
-- ============================================================

SELECT c.customer_name, o.order_id, o.total_amount, o.status
FROM customers c
    RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- ============================================================
-- 16. MULTIPLE TABLE JOIN
-- ============================================================

SELECT o.order_id, c.customer_name, p.product_name, oi.quantity, oi.unit_price
FROM
    orders o
    INNER JOIN customers c ON o.customer_id = c.customer_id
    INNER JOIN order_items oi ON o.order_id = oi.order_id
    INNER JOIN products p ON oi.product_id = p.product_id;

-- ============================================================
-- 17. CUSTOMER-WISE SALES
-- ============================================================

SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE
    o.status != 'Cancelled'
GROUP BY
    c.customer_name
ORDER BY total_spent DESC;

-- ============================================================
-- 18. PRODUCT-WISE QUANTITY SOLD
-- ============================================================

SELECT p.product_name, SUM(oi.quantity) AS total_quantity_sold
FROM
    products p
    INNER JOIN order_items oi ON p.product_id = oi.product_id
    INNER JOIN orders o ON oi.order_id = o.order_id
WHERE
    o.status != 'Cancelled'
GROUP BY
    p.product_name
ORDER BY total_quantity_sold DESC;

-- ============================================================
-- 19. SUBQUERY
-- ============================================================

-- Orders greater than average order value

SELECT
    order_id,
    customer_id,
    total_amount
FROM orders
WHERE
    total_amount > (
        SELECT AVG(total_amount)
        FROM orders
    );

-- ============================================================
-- 20. SUBQUERY: EXPENSIVE PRODUCTS
-- ============================================================

SELECT product_name, price
FROM products
WHERE
    price > (
        SELECT AVG(price)
        FROM products
    );

-- ============================================================
-- 21. HAVING CLAUSE
-- ============================================================

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE
    status != 'Cancelled'
GROUP BY
    customer_id
HAVING
    SUM(total_amount) > 20000;

-- ============================================================
-- 22. CREATE VIEW
-- ============================================================

CREATE OR REPLACE VIEW customer_sales AS
SELECT c.customer_id, c.customer_name, c.city, SUM(
        CASE
            WHEN o.status != 'Cancelled' THEN o.total_amount
            ELSE 0
        END
    ) AS total_spent
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.city;

-- View data
SELECT * FROM customer_sales ORDER BY total_spent DESC;

-- ============================================================
-- 23. PRODUCT SALES VIEW
-- ============================================================

CREATE OR REPLACE VIEW product_sales AS
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(oi.quantity) AS quantity_sold,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM
    products p
    INNER JOIN order_items oi ON p.product_id = oi.product_id
    INNER JOIN orders o ON oi.order_id = o.order_id
WHERE
    o.status != 'Cancelled'
GROUP BY
    p.product_id,
    p.product_name,
    p.category;

SELECT * FROM product_sales ORDER BY revenue DESC;

-- ============================================================
-- 24. CREATE INDEXES
-- ============================================================

CREATE INDEX idx_customer_city ON customers (city);

CREATE INDEX idx_order_customer ON orders (customer_id);

CREATE INDEX idx_order_status ON orders (status);

CREATE INDEX idx_product_category ON products (category);

-- ============================================================
-- 25. CHECK INDEXES
-- ============================================================

SHOW INDEX FROM customers;

SHOW INDEX FROM orders;

SHOW INDEX FROM products;

-- ============================================================
-- 26. QUERY OPTIMIZATION USING EXPLAIN
-- ============================================================

EXPLAIN SELECT * FROM orders WHERE customer_id = 1;

EXPLAIN SELECT * FROM products WHERE category = 'Electronics';

-- ============================================================
-- 27. BUSINESS ANALYSIS QUERIES
-- ============================================================

-- Top 5 customers by spending

SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE
    o.status != 'Cancelled'
GROUP BY
    c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Top products by revenue

SELECT p.product_name, SUM(oi.quantity * oi.unit_price) AS revenue
FROM
    products p
    INNER JOIN order_items oi ON p.product_id = oi.product_id
    INNER JOIN orders o ON oi.order_id = o.order_id
WHERE
    o.status != 'Cancelled'
GROUP BY
    p.product_name
ORDER BY revenue DESC
LIMIT 5;

-- Category-wise revenue

SELECT p.category, SUM(oi.quantity * oi.unit_price) AS category_revenue
FROM
    products p
    INNER JOIN order_items oi ON p.product_id = oi.product_id
    INNER JOIN orders o ON oi.order_id = o.order_id
WHERE
    o.status != 'Cancelled'
GROUP BY
    p.category
ORDER BY category_revenue DESC;

-- ============================================================
-- END OF PROJECT
-- ============================================================

SHOW DATABASES; ---Database created successfully



SELECT * FROM products WHERE price > 5000 ORDER BY price DESC; --Screenshot 2 — SELECT + WHERE





SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY
    city;----Screenshot 3 — GROUP BY



 SELECT o.order_id, c.customer_name, o.order_date, o.total_amount, o.status
FROM orders o
    INNER JOIN customers c ON o.customer_id = c.customer_id;----Screenshot 4 — INNER JOIN



 SELECT c.customer_id, c.customer_name, o.order_id, o.total_amount
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id;----Screenshot 5 — LEFT JOIN



 SELECT c.customer_name, o.order_id, o.total_amount, o.status
FROM customers c
    RIGHT JOIN orders o ON c.customer_id = o.customer_id;----Screenshot 6 — RIGHT JOIN



 SELECT
    order_id,
    customer_id,
    total_amount
FROM orders
WHERE
    total_amount > (
        SELECT AVG(total_amount)
        FROM orders
    );----Screenshot 7 — SUBQUERY


SELECT
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_order_value,
    MAX(total_amount) AS highest_order,
    MIN(total_amount) AS lowest_order
FROM orders
WHERE
    status != 'Cancelled';----Screenshot 8 — AGGREGATE FUNCTIONS


 SELECT * FROM customer_sales ORDER BY total_spent DESC;----Screenshot 9 — CREATE VIEW               


SHOW INDEX FROM orders;----Screenshot 10 — CREATE INDEX



