SELECT
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit,
SUM(Quantity) AS Total_Quantity
FROM sales;

SELECT
Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT
Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT
Sub_Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;


SELECT
Sub_Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;


SELECT
Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT
State,
ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;



SELECT
City,
ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY City
ORDER BY Total_Profit DESC
LIMIT 10;


SELECT
Segment,
ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Segment
ORDER BY Total_Sales DESC;


SELECT
Segment,
ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Segment
ORDER BY Total_Profit DESC;

SELECT
Category,
ROUND(AVG(Discount),2) AS Average_Discount
FROM sales
GROUP BY Category
ORDER BY Average_Discount DESC;


SELECT
Category,
Sub_Category,
State,
Sales,
Profit
FROM sales
ORDER BY Profit DESC
LIMIT 10;



SELECT
Category,
Sub_Category,
State,
Sales,
Profit
FROM sales
ORDER BY Profit ASC
LIMIT 10;


SELECT
Category,
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM sales
GROUP BY Category
ORDER BY Profit_Margin_Percentage DESC;

