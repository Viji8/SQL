use productdb;
CREATE TABLE orders__01 (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    price INT,
    event_name VARCHAR(50),
    event_date DATE
);
INSERT INTO orders__01 VALUES
(1, 'LipLiner', 3, 300, 'Swissbeauty', '2024-11-10'),
(2, 'Lipbalm', 1, 260, 'Mars', '2024-10-05'),
(3, 'Lipstick', 5, 1000, 'Wishcare', '2024-09-22'),
(4, 'Serum', 2, 800, 'Foxtale', '2024-08-15'),
(5, 'Sunscreen', 3, 1600, 'Sheth', '2024-07-30');

SELECT * FROM orders__01
WHERE quantity > 2;

SELECT * FROM orders__01
WHERE price BETWEEN 100 AND 500;

SELECT * FROM orders__01
WHERE product_name LIKE 'A%';

SELECT * FROM orders__01
ORDER BY quantity DESC;

SELECT 
    order_id,
    CONCAT(event_name, ' - ', event_date) AS event_details
FROM orders__01;
