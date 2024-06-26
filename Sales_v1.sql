CREATE VIEW `Sales_v1` AS

-- Nested query to allow selection of aggregated data QUANTITY_SOLD
SELECT
s1.YEAR_ID,
s1.MONTH_ID,
s1.PRODUCTLINE,
s1.PRODUCTCODE,
s1.QUANTITY_SOLD,
s1.MSRP * s1.QUANTITY_SOLD AS EXPECTED_TOTAL,
s1.TOTAL_REVENUE
FROM (SELECT
YEAR_ID,
MONTH_ID,
PRODUCTLINE,
PRODUCTCODE,
MSRP,
SUM(QUANTITYORDERED) as QUANTITY_SOLD,
SUM(SALES) as TOTAL_REVENUE
FROM sales_data
GROUP BY 
PRODUCTCODE,
PRODUCTLINE,
YEAR_ID,
MONTH_ID,
MSRP) s1;

