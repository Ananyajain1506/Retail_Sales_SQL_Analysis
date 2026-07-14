SELECT
SUM(CASE WHEN Ship_Mode IS NULL THEN 1 ELSE 0 END) AS Ship_Mode_Nulls,
SUM(CASE WHEN Segment IS NULL THEN 1 ELSE 0 END) AS Segment_Nulls,
SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Country_Nulls,
SUM(CASE WHEN City IS NULL THEN 1 ELSE 0 END) AS City_Nulls,
SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Nulls,
SUM(CASE WHEN Postal_Code IS NULL THEN 1 ELSE 0 END) AS Postal_Code_Nulls,
SUM(CASE WHEN Region IS NULL THEN 1 ELSE 0 END) AS Region_Nulls,
SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Category_Nulls,
SUM(CASE WHEN Sub_Category IS NULL THEN 1 ELSE 0 END) AS Sub_Category_Nulls,
SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Sales_Nulls,
SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Quantity_Nulls,
SUM(CASE WHEN Discount IS NULL THEN 1 ELSE 0 END) AS Discount_Nulls,
SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS Profit_Nulls
FROM sales;

SELECT
Ship_Mode,
Segment,
Country,
City,
State,
Postal_Code,
Region,
Category,
Sub_Category,
Sales,
Quantity,
Discount,
Profit,
COUNT(*) AS Duplicate_Count
FROM sales
GROUP BY
Ship_Mode,
Segment,
Country,
City,
State,
Postal_Code,
Region,
Category,
Sub_Category,
Sales,
Quantity,
Discount,
Profit
HAVING COUNT(*) > 1;

SELECT *
FROM sales
WHERE Profit < 0;

SELECT *
FROM sales
WHERE Sales = 0;

SELECT *
FROM sales
WHERE Discount < 0
   OR Discount > 1;
   
SELECT *
FROM sales
WHERE Quantity <= 0;
