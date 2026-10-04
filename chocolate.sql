create database chocolate_sales;

use chocolate_sales;

CREATE TABLE chocolatesales (
    sales_person   VARCHAR(50),
    country        VARCHAR(30),
    product        VARCHAR(50),
    order_date     DATE,
    amount         DECIMAL(10,2),
    boxes_shipped  INT,
    Order_ID int,
    Year int,
    Month varchar(50),
	Quarter char(50));
    
    select* from chocolatesales;
    
    
   -- 1. Total Orders 
 SELECT COUNT(*) AS total_rows FROM chocolatesales;
 
 
-- 2.  Checking the missing value
SELECT
 SUM(CASE WHEN sales_person IS NULL OR TRIM(sales_person)='' THEN 1 ELSE 0 END) AS missing_sales_person,
 SUM(CASE WHEN country IS NULL OR TRIM(country)='' THEN 1 ELSE 0 END) AS missing_country,
 SUM(CASE WHEN product IS NULL OR TRIM(product)='' THEN 1 ELSE 0 END) AS missing_product,
 SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS missing_date,
 SUM(CASE WHEN amount IS NULL THEN 1 ELSE 0 END) AS missing_amount
FROM chocolatesales;

-- 3. Total Sales
SELECT SUM(amount) AS total_sales FROM chocolatesales;

-- 4. Average sales
SELECT AVG(amount) AS average_order_value FROM chocolatesales;

-- 5. Total orders
SELECT COUNT(*) AS total_orders FROM chocolatesales;


-- 6. Sales by Country
SELECT country, SUM(amount) AS total_sales, AVG(amount) AS average_sales,
       COUNT(*) AS total_orders, SUM(boxes_shipped) AS boxes_shipped
FROM chocolatesales
GROUP BY country ORDER BY total_sales DESC
limit 6;


-- 7. Sales by product
SELECT product,country,  SUM(amount) AS total_sales, COUNT(*) AS total_orders,
       SUM(boxes_shipped) AS boxes_shipped
FROM chocolatesales
GROUP BY product, country
ORDER BY total_sales DESC, total_orders desc;


-- 8. Monthly revenue
SELECT EXTRACT(YEAR FROM order_date) AS sales_year,
       EXTRACT(MONTH FROM order_date) AS sales_month,
       SUM(amount) AS total_sales, COUNT(*) AS total_orders
FROM chocolatesales
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY sales_year, sales_month;


-- 9. Top 10 products 
SELECT product, SUM(amount) AS total_sales
FROM chocolatesales
GROUP BY product ORDER BY total_sales DESC
limit 10 ;


-- 10. Sales by person
SELECT sales_person, SUM(amount) AS total_sales, COUNT(*) AS total_orders,
       AVG(amount) AS average_order_value
FROM chocolatesales
GROUP BY sales_person ORDER BY total_sales DESC;
