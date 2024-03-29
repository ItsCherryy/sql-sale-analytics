CREATE VIEW `Customer_v2` AS

SELECT
rfm.CUSTOMERNAME,
rfm.RECENCY,
rfm.FREQUENCY,
rfm.MONETARY,
NTILE(5) OVER (ORDER BY rfm.RECENCY) AS SEGMENTED_RECENCY,
NTILE(5) OVER (ORDER BY rfm.FREQUENCY) AS SEGMENTED_FREQUENCY,
NTILE(5) OVER (ORDER BY rfm.FREQUENCY + rfm.MONETARY) AS SEGMENTED_FM,
NTILE(5) OVER (ORDER BY rfm.MONETARY) AS SEGMENTED_MONETARY
FROM (SELECT 
CUSTOMERNAME,
DATEDIFF((SELECT MAX(ORDERDATE) FROM sales_data) , MAX(ORDERDATE)) AS RECENCY,
-- DATEDIFF(@LASTDATE , MAX(ORDERDATE)) AS RECENCY,
COUNT(DISTINCT ORDERNUMBER) AS FREQUENCY,
SUM(SALES) AS MONETARY
FROM sales_data
GROUP BY CUSTOMERNAME) rfm;