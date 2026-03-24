-- 02_analysis_queries.sql

-- Total revenue
SELECT ROUND(SUM(CAST(REPLACE(sales, '$', '') AS DECIMAL(10,2))), 2) AS total_revenue
FROM order_details;

-- Total orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Total pizzas sold
SELECT SUM(quantity) AS total_pizzas_sold
FROM order_details;

-- Revenue by category
SELECT 
    pt.category,
    ROUND(SUM(CAST(REPLACE(od.sales, '$', '') AS DECIMAL(10,2))), 2) AS revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY revenue DESC;

-- Top 5 pizzas by revenue
SELECT 
    pt.pizza_name,
    ROUND(SUM(CAST(REPLACE(od.sales, '$', '') AS DECIMAL(10,2))), 2) AS revenue,
    SUM(od.quantity) AS quantity_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.pizza_name
ORDER BY revenue DESC
LIMIT 5;

-- Revenue by weekday
SELECT 
    o.day_name,
    ROUND(SUM(CAST(REPLACE(od.sales, '$', '') AS DECIMAL(10,2))), 2) AS revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.day_name
ORDER BY revenue DESC;

-- Revenue by hour
SELECT 
    EXTRACT(HOUR FROM o.order_time) AS order_hour,
    ROUND(SUM(CAST(REPLACE(od.sales, '$', '') AS DECIMAL(10,2))), 2) AS revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY EXTRACT(HOUR FROM o.order_time)
ORDER BY revenue DESC;
