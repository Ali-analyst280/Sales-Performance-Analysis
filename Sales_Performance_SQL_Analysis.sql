CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE sales (
    order_id VARCHAR(20),
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    product_name VARCHAR(100),
    category VARCHAR(50),
    sales DECIMAL(10,2),
    cost DECIMAL(10,2),
    profit DECIMAL(10,2),
    discount DECIMAL(5,2),
    month VARCHAR(20),
    year INT,
    profit_margin DECIMAL(5,2)
);
USE sales_analysis;
SHOW TABLES;
DROP DATABASE sales_analysis;
SHOW DATABASES;

USE sql_practice;

SHOW TABLES;
SELECT *
FROM Sales_Performance_Project_Dataset
LIMIT 5;

SELECT SUM(Sales) AS Total_Sales
FROM Sales_Performance_Project_Dataset;

SELECT SUM(Profit) AS Total_Profit
FROM Sales_Performance_Project_Dataset;

SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM Sales_Performance_Project_Dataset
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM Sales_Performance_Project_Dataset
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT Product_Name,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM Sales_Performance_Project_Dataset
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Product Name`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM Sales_Performance_Project_Dataset
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Month,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM Sales_Performance_Project_Dataset
GROUP BY Month
ORDER BY Total_Sales DESC;

SELECT Month,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM Sales_Performance_Project_Dataset
GROUP BY Month
ORDER BY Total_Profit DESC;




SELECT State,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM Sales_Performance_Project_Dataset
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT Category,
       ROUND(AVG(Sales),2) AS Avg_Sales
FROM Sales_Performance_Project_Dataset
GROUP BY Category
ORDER BY Avg_Sales DESC;

