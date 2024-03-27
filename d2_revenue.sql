use sales_data;

select 
YEAR_ID,
MONTH_ID,
PRODUCTLINE,
PRODUCTCODE,
QUANTITY_SOLD,
EXPECTED_TOTAL,
TOTAL_REVENUE,
TOTAL_REVENUE - EXPECTED_TOTAL AS PROFIT,
((TOTAL_REVENUE / EXPECTED_TOTAL) * 100) - 100 AS PROFIT_PERCENTAGE
from sales_v1;