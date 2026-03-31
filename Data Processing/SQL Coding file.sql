---Filtering to check if table data is loaded properly as planned and that i am able to read it properly
select * from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1` limit 1000;
--------------------------------------------------------------------------------------------------

---DATE RANGE 6 MONTHS PERIOD
---Filtering to check when did they start collecting data 2023-01-01
Select MIN(transaction_date)as start_date
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check when last date is for collecting data 2023-06-30
SELECT MAX(transaction_date)as Latest_date
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----Filtering to check the different store locations
---------We have 3 store locations Lower Manhattan Hell's Kitchen Astoria
SELECT Distinct store_location
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check products available across all the stores 
-----9 Different Product items across all stores
SELECT Distinct product_category
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----Checking for Null on all columns
-----------------------------------------------------------------
SELECT *
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`
WHERE unit_price IS NULL;

------Checking Lowest and Highest unit price
---------------------------------------------------------------
SELECT 
       MIN(unit_price) AS lowest_price,
       MAX(unit_price)AS highest_price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check product details
SELECT Distinct product_detail
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_detail AS product_name,
                product_category AS category 
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_type
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_detail AS product_name,
                product_type,
                product_category AS category 
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

---Checking Product prices
------------------------------------------------------------------------
SELECT MIN(unit_price) AS Cheapest_Price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT MAX(unit_price) AS Expensive_Price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----------------------------------------------------------------------

SELECT 
       COUNT(*) AS number_of_rows,
       COUNT(DISTINCT transaction_id) AS number_of_sales,
       COUNT(DISTINCT product_id) AS number_of_products,
       COUNT(DISTINCT store_id) AS number_of_stores
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

------------------------------------------------------------------------
select * 
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1` 
limit 100000;

------------Extracting dayname monthname and revenue per transaction
---------------------------------------------------------------------
SELECT transaction_id,
       transaction_date,
       DAYNAME(transaction_date) AS DAY_NAME,
       MONTHNAME(transaction_date) AS MONTH_NAME,
       transaction_qty*unit_price AS REVENUE_PER_TNX
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;


---------------------------------------------------------------------------
SELECT COUNT(*)
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;


SELECT 
       transaction_date,
       DAYNAME(transaction_date) AS DAY_NAME,
       MONTHNAME(transaction_date) AS MONTH_NAME,
       COUNT(DISTINCT transaction_id) AS number_of_sales,
       SUM(transaction_qty*unit_price) AS REVENUE_PER_DAY
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`
GROUP BY transaction_date,
         DAY_NAME,
         MONTH_NAME;
------------------------------------------------------------------------

-----Combining queries to get processed and enhance datase
---Filtering to check if table data is loaded properly as planned and that i am able to read it properly
select * from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1` limit 1000;
--------------------------------------------------------------------------------------------------

---DATE RANGE 6 MONTHS PERIOD
---Filtering to check when did they start collecting data 2023-01-01
Select MIN(transaction_date)as start_date
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check when last date is for collecting data 2023-06-30
SELECT MAX(transaction_date)as Latest_date
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----Filtering to check the different store locations
---------We have 3 store locations Lower Manhattan Hell's Kitchen Astoria
SELECT Distinct store_location
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check products available across all the stores 
-----9 Different Product items across all stores
SELECT Distinct product_category
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----Checking for Null on all columns
-----------------------------------------------------------------
SELECT *
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`
WHERE unit_price IS NULL;

------Checking Lowest and Highest unit price
---------------------------------------------------------------
SELECT 
       MIN(unit_price) AS lowest_price,
       MAX(unit_price)AS highest_price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check product details
SELECT Distinct product_detail
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_detail AS product_name,
                product_category AS category 
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_type
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_detail AS product_name,
                product_type,
                product_category AS category 
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

---Checking Product prices
------------------------------------------------------------------------
SELECT MIN(unit_price) AS Cheapest_Price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT MAX(unit_price) AS Expensive_Price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----------------------------------------------------------------------

SELECT 
       COUNT(*) AS number_of_rows,
       COUNT(DISTINCT transaction_id) AS number_of_sales,
       COUNT(DISTINCT product_id) AS number_of_products,
       COUNT(DISTINCT store_id) AS number_of_stores
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

------------------------------------------------------------------------
select * 
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1` 
limit 1000;

------------Extracting dayname monthname and revenue per transaction
---------------------------------------------------------------------
SELECT transaction_id,
       transaction_date,
       DAYNAME(transaction_date) AS DAY_NAME,
       MONTHNAME(transaction_date) AS MONTH_NAME,
       transaction_qty*unit_price AS REVENUE_PER_TNX
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;


---------------------------------------------------------------------------
SELECT COUNT(*)
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;


SELECT 
       transaction_date,
       DAYNAME(transaction_date) AS DAY_NAME,
       MONTHNAME(transaction_date) AS MONTH_NAME,
       COUNT(DISTINCT transaction_id) AS number_of_sales,
       SUM(transaction_qty*unit_price) AS REVENUE_PER_DAY
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`
GROUP BY transaction_date,
         DAY_NAME,
         MONTH_NAME;
------------------------------------------------------------------------
---DATE RANGE 6 MONTHS PERIOD
---Filtering to check when did they start collecting data 2023-01-01
Select MIN(transaction_date)as start_date
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check when last date is for collecting data 2023-06-30
SELECT MAX(transaction_date)as Latest_date
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----Filtering to check the different store locations
---------We have 3 store locations Lower Manhattan Hell's Kitchen Astoria
SELECT Distinct store_location
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check products available across all the stores 
-----9 Different Product items across all stores
SELECT Distinct product_category
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----Checking for Null on all columns
-----------------------------------------------------------------
SELECT *
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`
WHERE unit_price IS NULL;

------Checking Lowest and Highest unit price
---------------------------------------------------------------
SELECT 
       MIN(unit_price) AS lowest_price,
       MAX(unit_price)AS highest_price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

----Filtering to check product details
SELECT Distinct product_detail
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_detail AS product_name,
                product_category AS category 
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_type
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT Distinct product_detail AS product_name,
                product_type,
                product_category AS category 
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

---Checking Product prices
------------------------------------------------------------------------
SELECT MIN(unit_price) AS Cheapest_Price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

SELECT MAX(unit_price) AS Expensive_Price
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

-----------------------------------------------------------------------

SELECT 
       COUNT(*) AS number_of_rows,
       COUNT(DISTINCT transaction_id) AS number_of_sales,
       COUNT(DISTINCT product_id) AS number_of_products,
       COUNT(DISTINCT store_id) AS number_of_stores
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;

------------------------------------------------------------------------
select * 
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1` 
limit 100000;

------------Extracting dayname monthname and revenue per transaction
---------------------------------------------------------------------
SELECT transaction_id,
       transaction_date,
       DAYNAME(transaction_date) AS DAY_NAME,
       MONTHNAME(transaction_date) AS MONTH_NAME,
       transaction_qty*unit_price AS REVENUE_PER_TNX
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;


---------------------------------------------------------------------
-------Calculating Revenue
SELECT unit_price,
       transaction_qty,
       unit_price*transaction_qty AS REVENUE
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;
---------------------------------------------------------------------
---- Bring Functions to extract a clean data set for processing insight
SELECT transaction_id,
       transaction_date,
       transaction_time,
       transaction_qty,
       store_id,
       product_id,
       unit_price,
       product_category,
       product_type,
       product_detail,
       store_location,
----Adding columns to improve the table for more insights
----Inserting new column Time Buckets intervals to gain insight on Rush hours and slow times
     Dayname(transaction_date) AS Day_name,
     Monthname(transaction_date) AS Month_name,
     Dayofmonth(transaction_date) AS Day_of_month,

CASE
     WHEN DAYNAME(transaction_date) IN ('Sun','Sat') THEN 'Weekend'
     ELSE 'Weekday'
     END AS Day_Classification,
----Time Buckets intervals column------------
CASE
     WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '05:00:00'AND'08:59:59' THEN '01.Morning Rush'
     WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '09:00:00'AND '11:59:59' THEN '02.Mid Morning'
     WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '12:00:00'AND '15:59:59' THEN '03.Afternoon'
     WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '16:00:00'AND '18:59:59' THEN '04.Late Rush'
     ELSE 'weekday'
     END AS Day_Classification,
-------New Column to observe spend bucket for cross-selling--------
CASE
     WHEN (transaction_qty*unit_price) <=50 THEN '01.Low Price'
     WHEN (transaction_qty*unit_price) BETWEEN 51 AND 200 THEN'02.Medium'
     WHEN (transaction_qty*unit_price) BETWEEN 201 AND 300 THEN'03.High Price'
     ELSE '04 Extravegent Price'
     END AS Spent_Bucket,
--------- Column to show the REVENUE for the Shop in order to anayse further numbers
     transaction_qty*unit_price AS REVENUE
FROM `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_1`;
