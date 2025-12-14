CREATE DATABASE retail_analytics;
USE retail_analytics;
CREATE TABLE sales (
    row_id INT,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);
SHOW TABLES;
DROP TABLE sales;
CREATE TABLE sales (
    row_id INT,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);
DROP TABLE sales;
CREATE TABLE sales (
    row_id INT,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);
SELECT COUNT(*) FROM sales;
SELECT ROUND(SUM(sales), 2) AS total_sales 
FROM sales;
SELECT ROUND(SUM(profit), 2) AS total_profit 
FROM sales;
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
SELECT sub_category, SUM(sales) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC;
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT region, SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC;
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, 
       SUM(sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
SELECT customer_name, SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT product_name, SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
SELECT discount, ROUND(AVG(profit), 2) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;













