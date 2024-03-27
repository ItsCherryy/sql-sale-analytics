-- Use Schema sales_data
use sales_data;

-- Select attributes to visualize from the dataset
SELECT
ORDERNUMBER,
PRICEEACH,
QUANTITYORDERED,
PRODUCTCODE,
PRODUCTLINE,
ORDERDATE,
YEAR_ID,
MONTH_ID,
CITY,
STATE,
COUNTRY,
DEALSIZE
FROM
sales_data;
