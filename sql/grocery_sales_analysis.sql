-- Grocery Sales Analysis | MySQL 8+
CREATE DATABASE IF NOT EXISTS grocery_sales_db;
USE grocery_sales_db;

-- Import grocery_sales.csv into a table named grocery_sales.

SELECT ROUND(SUM(Sales), 2) AS total_sales FROM grocery_sales;

SELECT ROUND(AVG(Sales), 2) AS average_sales FROM grocery_sales;

SELECT SUM(Quantity) AS total_items FROM grocery_sales;

SELECT ROUND(AVG(Rating), 2) AS average_rating FROM grocery_sales;

SELECT Outlet_Type,
       ROUND(SUM(Sales), 2) AS total_sales,
       SUM(Quantity) AS total_items,
       ROUND(AVG(Sales), 2) AS average_sales,
       ROUND(AVG(Rating), 2) AS average_rating
FROM grocery_sales
GROUP BY Outlet_Type
ORDER BY total_sales DESC;

SELECT Item_Type,
       ROUND(SUM(Sales), 2) AS total_sales,
       SUM(Quantity) AS total_items
FROM grocery_sales
GROUP BY Item_Type
ORDER BY total_sales DESC;

SELECT Outlet_Establishment_Year,
       ROUND(SUM(Sales), 2) AS total_sales,
       SUM(Quantity) AS total_items
FROM grocery_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

SELECT Location_Tier,
       ROUND(SUM(Sales), 2) AS total_sales,
       SUM(Quantity) AS total_items
FROM grocery_sales
GROUP BY Location_Tier
ORDER BY total_sales DESC;

SELECT Item_Fat_Content,
       ROUND(AVG(Sales), 2) AS average_sales,
       ROUND(AVG(Rating), 2) AS average_rating
FROM grocery_sales
GROUP BY Item_Fat_Content;

SELECT Item_Type,
       ROUND(SUM(Sales), 2) AS total_sales
FROM grocery_sales
GROUP BY Item_Type
ORDER BY total_sales DESC
LIMIT 10;
