CREATE DATABASE retail_sales;

USE retail_sales;

CREATE TABLE sales (

Ship_Mode VARCHAR(50),

Segment VARCHAR(50),

Country VARCHAR(50),

City VARCHAR(50),

State VARCHAR(50),

Postal_Code INT,

Region VARCHAR(50),

Category VARCHAR(50),

Sub_Category VARCHAR(50),

Sales DECIMAL(10,2),

Quantity INT,

Discount DECIMAL(5,2),

Profit DECIMAL(10,2)

);

