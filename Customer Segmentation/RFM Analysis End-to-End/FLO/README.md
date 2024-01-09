## Customer Segmentation - RFM Analysis using [FLO's](https://www.linkedin.com/company/flo-ma%C4%9Fazac%C4%B1l%C4%B1k/) Dataset
-------------------------------

![RFM Metric](https://github.com/BedirK/Portfolio-Projects/assets/103532330/f0039e47-bd15-458a-bb5d-2c22c83f6984)

This project is the RFM case study with realized data; from Miuul [Data Analytics Bootcamp](https://miuul.com/data-analyst-bootcamp) 

## About FLO
-------------------------------
FLO, one of Turkey's largest fashion retailers, has been operating since 2010, providing a wide range of products including shoes, bags, and clothing for men and women. With an extensive chain of stores across Turkey, Flo has recently extended its operations to international markets.

## Business Problem
-------------------------------
FLO is planning to categorize its customer base and develop marketing strategies tailored to each segment. 

To achieve this, customer behaviors will be identified, and distinct groups will be created based on these behavior clusters.

## Story of Dataset
-------------------------------
#### 19.945 observations, 13 different variables

The dataset contains data collected from customers who made purchases in 2020 - 2021 using both online and offline channels.

![image](https://github.com/BedirK/Portfolio-Projects/assets/103532330/41aa3662-b9a5-4bc9-8c23-a6f3472efadb)

- master_id: A unique identification number assigned to each customer.
  
- order_channel: Indicates the shopping platform used for purchase (Android, iOS, Desktop, Mobile, Offline).
  
- last_order_channel: the channel through which the customer made their most recent purchase.
  
- first_order_date: the date when the customer made their initial purchase.
  
- last_order_date: the date of the customer's most recent purchase.
  
- last_order_date_online: the date of the customer's latest online purchase.
  
- last_order_date_offline: the date of the customer's most recent offline purchase.
  
- order_num_total_ever_online: the total count of purchases made by the customer on the online platform.
  
- order_num_total_ever_offline: the total number of purchases made by the customer offline.
  
- customer_value_total_ever_offline: the cumulative amount spent by the customer for offline purchases.
  
- customer_value_total_ever_online: the total expenditure of the customer on online purchases.
  
- interested_in_categories_12: Lists the categories in which the customer has made purchases in the last 12 months.
  
## TASKS
-------------------------------
## TASK 1: Data Understanding and Preparation

   1. Access the FLO data from the SQL database and Read.
   2. In the dataset:
      
         i.   The first 10 observations,
      
         ii.  Variable names,
      
         iii. Descriptive statistics,
      
         iv.  Null value,
      
         v.   Variable types, review.
  3. Create new variables for each customer's total purchases and spending.
  4. Examine the variable types. Change the type of variables that express date to date.
  5. See the breakdown of the number of customers, average number of products purchased, and average spend across shopping channels.
  6. Rank the top 10 customers with the highest revenue.
  7. List the top 10 customers with the most orders.
## TASK 2: Calculating RFM Metrics
## TASK 3: Calculating RF and RFM Scores
## TASK 4: Segment Definitions
## TASK 5: Action Time!
   1. Examine the recency, frequency, and monetary averages of the segments.
   2. With the help of RFM analysis, find the customers in the relevant profile for 2 cases;
      
        i. FLO is incorporating a new women's shoe brand. The product prices of the brand are above the general customer preferences. For this reason, it is requested to contact customers who will be interested in the promotion of the brand and product sales. The definition of this profile is as follows; loyal customers (champions, loyal_customers) with an average of over 250 TL and shopping in the women's category.
      
        ii. Discounts of up to 40% are planned for men's and children's products. This discount is aimed at customers who have been good customers in the past, but have not been shopping for a long time, as well as new customers. 
