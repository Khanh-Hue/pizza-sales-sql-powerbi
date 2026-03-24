-- 01_create_tables.sql

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date VARCHAR(100),
    order_time TIME,
    custom_time VARCHAR(50),
    day_name VARCHAR(20),
    weekend_flag VARCHAR(20)
);

CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,
    pizza_id VARCHAR(50),
    quantity INT,
    size VARCHAR(10),
    price DECIMAL(10,2),
    sales VARCHAR(20)
);

CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,
    pizza_type_id VARCHAR(50),
    size VARCHAR(10),
    price DECIMAL(10,2)
);

CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) PRIMARY KEY,
    pizza_name VARCHAR(100),
    category VARCHAR(50),
    ingredients VARCHAR(500)
);
