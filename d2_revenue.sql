use sales_data;

select 
YEAR_ID,
MONTH_ID,
PRODUCTLINE,
PRODUCTCODE,
QUANTITY_SOLD,
EXPECTED_TOTAL,
TOTAL_REVENUE,
-- Assuming MSRP is the baseline for profit
TOTAL_REVENUE - EXPECTED_TOTAL AS PROFIT,
-- Calculate profit percentage through dividing revenue by expected revenue
-- Multiple by 100 to get it in percentage and minus 100 to get the difference
((TOTAL_REVENUE / EXPECTED_TOTAL) * 100) - 100 AS PROFIT_PERCENTAGE
from sales_v1;