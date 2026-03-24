-- 03_create_views.sql

CREATE VIEW vw_pizza_sales AS
SELECT
    od.order_details_id,
    o.order_id,
    o.order_date,
    o.order_time,
    o.day_name,
    o.weekend_flag,
    od.pizza_id,
    pt.pizza_name,
    pt.category,
    od.quantity,
    od.size,
    od.price,
    CAST(REPLACE(od.sales, '$', '') AS DECIMAL(10,2)) AS sales_amount,
    pt.ingredients
FROM order_details od
JOIN orders o ON od.order_id = o.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id;
