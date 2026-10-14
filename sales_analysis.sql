USE sales_analysis;

SELECT * FROM sample;

SELECT COUNT(*) AS total_records FROM sample;

SELECT SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM sample;

SELECT AVG(Sales) AS average_sales FROM sample;

SELECT MAX(Sales) AS highest_sales FROM sample;

SELECT MIN(Sales) AS lowest_sales FROM sample;

SELECT Product, SUM(Sales) AS total_sales
FROM sample
GROUP BY Product
ORDER BY total_sales DESC;

SELECT Country, SUM(Sales) AS total_sales
FROM sample
GROUP BY Country
ORDER BY total_sales DESC;

SELECT Product, SUM(Profit) AS total_profit
FROM sample
GROUP BY Product
ORDER BY total_profit DESC;

SELECT Product, AVG(Profit) AS average_profit
FROM sample
GROUP BY Product
ORDER BY average_profit DESC;

SELECT Country, Product, SUM(Sales) AS total_sales
FROM sample
GROUP BY Country, Product
ORDER BY total_sales DESC;

SELECT Country, COUNT(*) AS total_records, SUM(Sales) AS total_sales
FROM sample
GROUP BY Country
ORDER BY total_sales DESC;

SELECT Product, SUM(Sales) AS total_sales
FROM sample
GROUP BY Product
HAVING SUM(Sales) > 1000
ORDER BY total_sales DESC;

SELECT * FROM sample
WHERE Profit > 0;

SELECT * FROM sample
WHERE Profit < 0;

SELECT * FROM sample
WHERE Sales <= 0;

SELECT AVG(Profit) AS average_profit FROM sample;

SELECT SUM(Discounts) AS total_discounts FROM sample;

SELECT
    COUNT(*) AS total_records,
    SUM(Sales) AS total_sales,
    AVG(Sales) AS average_sales,
    MAX(Sales) AS highest_sales,
    MIN(Sales) AS lowest_sales,
    SUM(Profit) AS total_profit,
    AVG(Profit) AS average_profit
FROM sample;
SELECT Segment, SUM(Sales) AS total_sales
FROM sample
GROUP BY Segment
ORDER BY total_sales DESC;

SELECT Segment, SUM(Profit) AS total_profit
FROM sample
GROUP BY Segment
ORDER BY total_profit DESC;

SELECT Product, COUNT(*) AS total_orders
FROM sample
GROUP BY Product
ORDER BY total_orders DESC;

SELECT Country, AVG(Sales) AS average_sales
FROM sample
GROUP BY Country
ORDER BY average_sales DESC;

SELECT Product, SUM(Discounts) AS total_discounts
FROM sample
GROUP BY Product
ORDER BY total_discounts DESC;

SELECT *
FROM sample
ORDER BY Sales DESC
LIMIT 5;

SELECT *
FROM sample
ORDER BY Profit ASC
LIMIT 5;

SELECT Product, SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM sample
GROUP BY Product
ORDER BY total_profit DESC;

SELECT Country, Product,
       AVG(Sales) AS average_sales
FROM sample
GROUP BY Country, Product
ORDER BY average_sales DESC;

SELECT
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Discounts) AS total_discounts,
    COUNT(*) AS total_records
FROM sample;