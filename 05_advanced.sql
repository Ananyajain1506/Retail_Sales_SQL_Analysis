SELECT
Category,
Sales,
Profit,
CASE
WHEN Profit > 0 THEN 'Profit'
WHEN Profit = 0 THEN 'Break Even'
ELSE 'Loss'
END AS Profit_Status
FROM sales;



SELECT
Sales,
CASE
WHEN Sales >= 1000 THEN 'High Sales'
WHEN Sales >= 500 THEN 'Medium Sales'
ELSE 'Low Sales'
END AS Sales_Category
FROM sales;



SELECT *
FROM sales
WHERE Sales >
(
SELECT AVG(Sales)
FROM sales
);



SELECT *
FROM sales
WHERE Profit >
(
SELECT AVG(Profit)
FROM sales
);



WITH CategorySales AS
(
SELECT
Category,
SUM(Sales) AS TotalSales
FROM sales
GROUP BY Category
)

SELECT *
FROM CategorySales
ORDER BY TotalSales DESC;



WITH RegionProfit AS
(
SELECT
Region,
SUM(Profit) AS TotalProfit
FROM sales
GROUP BY Region
)

SELECT *
FROM RegionProfit
ORDER BY TotalProfit DESC;



SELECT
Category,
Sales,
ROW_NUMBER() OVER(ORDER BY Sales DESC) AS Row_Num
FROM sales;



SELECT
Category,
Sales,
RANK() OVER(ORDER BY Sales DESC) AS Sales_Rank
FROM sales;



SELECT
Category,
Sales,
DENSE_RANK() OVER(ORDER BY Sales DESC) AS Dense_Rank
FROM sales;


SELECT
Category,
Sub_Category,
Sales,
RANK() OVER(
PARTITION BY Category
ORDER BY Sales DESC
) AS Category_Rank
FROM sales;



WITH RankedSales AS
(
SELECT
Category,
Sub_Category,
Sales,
ROW_NUMBER() OVER
(
PARTITION BY Category
ORDER BY Sales DESC
) AS rn
FROM sales
)

SELECT *
FROM RankedSales
WHERE rn <=3;



SELECT
Category,
Sales,
SUM(Sales)
OVER(
ORDER BY Sales
) AS Running_Total
FROM sales;



SELECT
Category,
Sales,
AVG(Sales)
OVER(
ORDER BY Sales
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
) AS Moving_Average
FROM sales;



SELECT
Sales,
NTILE(4)
OVER(ORDER BY Sales DESC) AS Quartile
FROM sales;



SELECT
Sales,
LAG(Sales)
OVER(ORDER BY Sales) AS Previous_Sale
FROM sales;


SELECT
Sales,
LEAD(Sales)
OVER(ORDER BY Sales) AS Next_Sale
FROM sales;


SELECT
Category,
MAX(Sales) AS Highest_Sale
FROM sales
GROUP BY Category;


SELECT
State,
SUM(Profit) AS Total_Profit
FROM sales
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 5;


SELECT
State,
SUM(Profit) AS Total_Profit
FROM sales
GROUP BY State
ORDER BY Total_Profit ASC
LIMIT 5;


SELECT
Category,
ROUND(
SUM(Sales) *100/
(SELECT SUM(Sales) FROM sales),2
) AS Contribution_Percentage
FROM sales
GROUP BY Category
ORDER BY Contribution_Percentage DESC;
