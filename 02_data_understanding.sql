SELECT COUNT(*) AS Total_Rows
FROM sales;

SELECT *
FROM sales
LIMIT 10;

DESCRIBE sales;

SELECT
COUNT(DISTINCT Country) AS Countries,
COUNT(DISTINCT Region) AS Regions,
COUNT(DISTINCT State) AS States,
COUNT(DISTINCT City) AS Cities,
COUNT(DISTINCT Category) AS Categories,
COUNT(DISTINCT Sub_Category) AS SubCategories,
COUNT(DISTINCT Segment) AS Segments,
COUNT(DISTINCT Ship_Mode) AS ShipModes
FROM sales;

SELECT
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit,
ROUND(AVG(Sales),2) AS Average_Sales,
ROUND(AVG(Profit),2) AS Average_Profit
FROM sales;

SELECT
MIN(Sales) AS Minimum_Sale,
MAX(Sales) AS Maximum_Sale,
MIN(Profit) AS Minimum_Profit,
MAX(Profit) AS Maximum_Profit
FROM sales;

SELECT
Region,
COUNT(*) AS Total_Orders
FROM sales
GROUP BY Region
ORDER BY Total_Orders DESC;

SELECT
Category,
COUNT(*) AS Total_Records
FROM sales
GROUP BY Category;

SELECT
Segment,
COUNT(*) AS Total_Records
FROM sales
GROUP BY Segment;
