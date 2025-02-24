drop database if exists supermarketsales;

CREATE DATABASE supermarketsales ;

USE supermarketsales;

select * from supermarketsales;

#Find the Total Sales Revenue
SELECT SUM(total_price) AS total_revenue FROM supermarketsales;

#Count Products Sold by Category
SELECT category, COUNT(*) AS product_count FROM supermarketsales GROUP BY category;

#Find the Most Expensive Product Sold
SELECT product, unit_price FROM supermarketsales ORDER BY unit_price DESC LIMIT 1;

#Calculate the Average Sales per Day
SELECT sale_date, AVG(total_price) AS avg_sales FROM supermarketsales GROUP BY sale_date;

#Find Sales of "Fruits" Category
SELECT * FROM supermarketsales WHERE category = 'Bakery';

#Find the Most Expensive Product Sold
SELECT product, unit_price FROM supermarketsales ORDER BY unit_price DESC LIMIT 1;

# Find the Least Expensive Product Sold
SELECT product, unit_price FROM supermarketsales ORDER BY unit_price ASC LIMIT 1;

#Find the Best-Selling Product by Quantity
SELECT product, SUM(quantity) AS total_quantity FROM supermarketsales GROUP BY product ORDER BY total_quantity DESC LIMIT 1;

#Find the Category with the Highest Revenue
SELECT category, ROUND(SUM(total_price), 2) AS total_revenue FROM supermarketsales GROUP BY category ORDER BY total_revenue DESC LIMIT 1;

# Find the Average Sales Revenue per Day
SELECT sale_date, ROUND(AVG(total_price), 2) AS avg_sales FROM supermarketsales GROUP BY sale_date;

#Find Total Revenue for Each Product
SELECT product, SUM(total_price) AS total_revenue FROM supermarketsales GROUP BY product ORDER BY total_revenue DESC;

#Find the Number of Transactions per Day
SELECT sale_date, COUNT(*) AS transactions FROM supermarketsales GROUP BY sale_date;

#Find the Most Profitable Product
SELECT product, SUM(total_price) AS total_profit FROM supermarketsales GROUP BY product ORDER BY total_profit DESC LIMIT 1;

#Find the Top 3 Best-Selling Products
SELECT product, SUM(quantity) AS total_quantity FROM supermarketsales GROUP BY product ORDER BY total_quantity DESC LIMIT 3;

#Find the Most Popular Category
SELECT category, SUM(quantity) AS total_quantity_sold FROM supermarketsales GROUP BY category ORDER BY total_quantity_sold DESC LIMIT 1;

#Find Sales Trends Over Time (Daily Revenue)
SELECT sale_date, SUM(total_price) AS daily_revenue FROM supermarketsales GROUP BY sale_date ORDER BY sale_date;

#Find Products That Sold More Than 5 Units
SELECT product, quantity FROM supermarketsales WHERE quantity > 5;






