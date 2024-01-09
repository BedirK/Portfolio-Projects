                                                                  ####################################
                                                        # Customer Segmentation - RFM Analysis using FLO's Dataset #
                                                                  ####################################


#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#    +                                                               FLO TABLE                                                                                                                                                                                                                                                                      +
#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#    +                                                                                                                                                                                                                                                                                                                                               +
#    +                  master_id                   order_channel    last_order_channel   first_order_date   last_order_date   last_order_date_online   last_order_date_offline   order_num_total_ever_online   order_num_total_ever_offline   customer_value_total_ever_offline   customer_value_total_ever_online    interested_in_categories_12   +
#    +   0  cc294636-19f0-11eb-8d74-000d3a38a36f     Android App           Offline           2020-10-30         2021-02-26           2021-02-21               2021-02-26                     4.000                         1.000                            139.990                           799.380                                      [KADIN]   +
#    +   1  f431bd5a-ab7b-11e9-a2fc-000d3a38a36f     Android App            Mobile           2017-02-08         2021-02-16           2021-02-16               2020-01-10                     19.000                        2.000                            159.970                          1853.580             [ERKEK, COCUK, KADIN, AKTIFSPOR]   +
#    +   2  69b69676-1a40-11ea-941b-000d3a38a36f     Android App       Android App           2019-11-27         2020-11-27           2020-11-27               2019-12-01                      3.000                        2.000                            189.970                           395.350                               [ERKEK, KADIN]   +
#    +   3  1854e56c-491f-11eb-806e-000d3a38a36f     Android App       Android App           2021-01-06         2021-01-17           2021-01-17               2021-01-06                      1.000                        1.000                             39.990                            81.980                          [AKTIFCOCUK, COCUK]   +
#    +   4  d6ea1074-f1f5-11e9-9346-000d3a38a36f       Desktop             Desktop           2019-08-03         2021-03-07           2021-03-07               2019-08-03                      1.000                        1.000                             49.990                           159.990                                  [AKTIFSPOR]   +
#    +                                                                                                                                                                                                                                                                                                                                               +
#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



###############################################################
# Customer Segmentation with RFM
###############################################################

###############################################################
# Business Problem
###############################################################
# FLO is planning to categorize its customer base and develop marketing strategies tailored to each segment. 
# To achieve this, customer behaviors will be identified, and distinct groups will be created based on these behavior clusters.

###############################################################
# Story of Dataset
###############################################################

# The dataset contains data collected from customers who made purchases in 2020 - 2021 using both online and offline channels.

# 19.945 observations, 13 different variables

# master_id: A unique identification number assigned to each customer.
# order_channel: Indicates the shopping platform used for purchase (Android, iOS, Desktop, Mobile, Offline). 
# last_order_channel: the channel through which the customer made their most recent purchase.
# first_order_date: the date when the customer made their initial purchase. 
# last_order_date: the date of the customer's most recent purchase.
# last_order_date_online: the date of the customer's latest online purchase.
# last_order_date_offline: the date of the customer's most recent offline purchase.
# order_num_total_ever_online: the total count of purchases made by the customer on the online platform.
# order_num_total_ever_offline: the total number of purchases made by the customer offline.
# customer_value_total_ever_offline: the cumulative amount spent by the customer for offline purchases.
# customer_value_total_ever_online: the total expenditure of the customer on online purchases.
# interested_in_categories_12: Lists the categories in which the customer has made purchases in the last 12 months.

###############################################################
# TASKS
###############################################################

###############################################################
## TASK 1: Data Understanding and Preparation
###############################################################

  -- 1. Access the FLO data from the SQL database and Read.
                                                          
        SELECT * FROM flodb.dbo.flo
                                                          
  -- 2. In the dataset:
                                                         
         i.   The first 10 observations,

        SELECT TOP 10 * FROM flodb.dbo.flo

        SELECT  * FROM flodb.INFORMATION_SCHEMA.COLUMNS

         ii.  Variable names,
      
        SELECT COLUMN_NAME AS VARIABLE_NAMES
        FROM flodb.INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'FLO'
                                                         
         iii. Descriptive statistics,
                                                       
        SELECT COUNT(*) AS NUMBER_OF_ROWS , 
        (SELECT COUNT(COLUMN_NAME) AS VARIABLE_NAMES
        FROM flodb.INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'FLO') AS NUMBER_OF_COLUMNS
        FROM flodb.dbo.flo 
                                                         
         iv.  Null value,
                                                         
        SELECT * FROM flodb.dbo.flo WHERE master_id IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE order_channel IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE last_order_channel IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE first_order_date IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE last_order_date IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE last_order_date_online IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE last_order_date_offline IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE order_num_total_ever_online IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE order_num_total_ever_offline IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE customer_value_total_ever_offline IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE customer_value_total_ever_online IS NULL;
        SELECT * FROM flodb.dbo.flo WHERE interested_in_categories_12 IS NULL;


         v.   Variable types, review.
          
        SELECT COLUMN_NAME, DATA_TYPE 
        FROM flodb.INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'FLO'
          
  -- 3. Create new variables for each customer's total purchases and spending.

        ALTER TABLE flo ADD order_num_total AS (order_num_total_ever_online + order_num_total_ever_offline)
        SELECT * FROM flo

        ALTER TABLE flo ADD customer_value_total AS (customer_value_total_ever_offline + customer_value_total_ever_online)
        SELECT * FROM flo
          
 -- 4. See the breakdown of the number of customers, average number of products purchased, and average spend across shopping channels.
          
         SELECT order_channel, 
         COUNT(master_id) AS COUNT_MASTER_ID, 
         ROUND(AVG(order_num_total), 0) AS AVG_ORDER_NUM_TOTAL, 
         ROUND(AVG(customer_value_total), 0) AS AVG_CUSTOMER_VALUE_TOTAL 
         FROM flo
         GROUP BY order_channel


-- 5. Rank the top 10 customers with the highest revenue.

         SELECT TOP 10 * FROM flo ORDER BY customer_value_total DESC

-- 6. List the top 10 customers with the most orders.

         SELECT TOP 10 * FROM flo ORDER BY order_num_total DESC

###############################################################
# TASK 2: Calculating RFM Metrics
###############################################################

   -- # The analysis date will be two(2) days after the date of the customer's last purchase.
     
         SELECT MAX(last_order_date) AS MAX_SON_ALISVERIS_TARIHI FROM flo; -- "2021-05-30" date of the customer's most recent purchase

-- Analysis_date = (2021-06-01)

-- Creating RFM Table including customer_id, recency, frequency ve monetary values

         SELECT master_id AS CUSTOMER_ID,
           DATEDIFF(DAY, last_order_date, '20210601') AS RECENCY,
           order_num_total AS FREQUENCY,
           customer_value_total AS MONETARY,
           NULL RECENCY_SCORE,
           NULL FREQUENCY_SCORE,
           NULL MONETARY_SCORE
        INTO RFM
        FROM flo
      

-- Check and Read Recency, Frequency ve Monetary values from RFM Table

        SELECT * FROM RFM;

###############################################################
# TASK 3: Calculating RF and RFM Scores
###############################################################
  
--# Converting Recency, Frequency, and Monetary metrics to scores between 1-5
--# recording these scores as recency_score, frequency_score, and monetary_score

 -- Expressing and Creating RECENCY_SCORE

     UPDATE RFM SET RECENCY_SCORE = 
    (SELECT SCORE FROM
    (SELECT A.*,
        NTILE(5) OVER(ORDER BY Recency DESC) SCORE
    FROM RFM AS A
    ) T 
    WHERE T.Customer_ID = RFM.Customer_ID
    )

    SELECT * FROM RFM

-- Expressing and Creating FREQUENCY_SCORE
 
    UPDATE RFM SET FREQUENCY_SCORE = 
    (SELECT SCORE FROM
    (SELECT A.*,
        NTILE(5) OVER(ORDER BY Frequency) AS SCORE
    FROM RFM AS A
    ) T 
    WHERE T.Customer_ID = RFM.Customer_ID
    )

    SELECT * FROM RFM

-- Expressing and Creating MONETARY_SCORE 
 
    UPDATE RFM SET MONETARY_SCORE = 
    (SELECT SCORE FROM
    (SELECT A.*,
        NTILE(5) OVER(ORDER BY Monetary) AS SCORE
    FROM RFM AS A
    ) T 
    WHERE T.Customer_ID = RFM.Customer_ID
    )

     SELECT * FROM RFM -- CHECK

  -- ###### RF_SCORE and RFM_SCORE Creation ###### --

  -- #  Expressing RECENCY_SCORE and FREQUENCY_SCORE as a single variable and saving it as RF_SCORE

      ALTER TABLE RFM ADD RF_SCORE AS (CONVERT(VARCHAR,RECENCY_SCORE) + CONVERT(VARCHAR,FREQUENCY_SCORE));

      SELECT * FROM RFM

   -- # Expressing RECENCY_SCORE, FREQUENCY_SCORE and MONETARY_SCORE'u as a single variable and saving it as RFM_SCORE 

      ALTER TABLE RFM ADD RFM_SCORE AS (CONVERT(VARCHAR,RECENCY_SCORE) + CONVERT(VARCHAR,FREQUENCY_SCORE) + CONVERT(VARCHAR, MONETARY_SCORE));

    -- CHECK

      SELECT * FROM RFM

 
###############################################################
# TASK 4: Segment Definitions
###############################################################

 -- # Segment definition, and converting RF_SCORE so that the generated RFM scores can be explained more clearly

 -- Creating a new column as SEGMENT 

    ALTER TABLE RFM ADD SEGMENT VARCHAR(50);
 
-- Creating Hibernating Class
         
    UPDATE RFM SET SEGMENT ='hibernating'
    WHERE RECENCY_SCORE LIKE '[1-2]%' AND FREQUENCY_SCORE LIKE '[1-2]%'

    SELECT * FROM RFM;

-- Creating  at Risk Class
         
    UPDATE RFM SET SEGMENT ='at_Risk'
    WHERE RECENCY_SCORE LIKE '[1-2]%' AND FREQUENCY_SCORE LIKE '[3-4]%'

-- Creating  About to Sleep Class
         
    UPDATE RFM SET SEGMENT ='cant_loose'
    WHERE RECENCY_SCORE LIKE '[1-2]%' AND FREQUENCY_SCORE LIKE '[5]%'

-- About to Sleep sınıfının oluşturulması
    
    UPDATE RFM SET SEGMENT ='about_to_sleep'
    WHERE RECENCY_SCORE LIKE '[3]%' AND FREQUENCY_SCORE LIKE '[1-2]%'

-- Creating  Need Attention Class
         
    UPDATE RFM SET SEGMENT ='need_attention'
    WHERE RECENCY_SCORE LIKE '[3]%' AND FREQUENCY_SCORE LIKE '[3]%'

-- Creating  Loyal Customers Class
         
    UPDATE RFM SET SEGMENT ='loyal_customers'
    WHERE RECENCY_SCORE LIKE '[3-4]%' AND FREQUENCY_SCORE LIKE '[4-5]%'
   
-- Creating Promising Class
         
    UPDATE RFM SET SEGMENT ='promising'
    WHERE RECENCY_SCORE LIKE '[4]%' AND FREQUENCY_SCORE LIKE '[1]%'

-- Creating  New Customers Class
         
    UPDATE RFM SET SEGMENT ='new_customers'
    WHERE RECENCY_SCORE LIKE '[5]%' AND FREQUENCY_SCORE LIKE '[1]%'

-- Creating  Potential Loyalist Class
         
    UPDATE RFM SET SEGMENT ='potential_loyalists'
    WHERE RECENCY_SCORE LIKE '[4-5]%' AND FREQUENCY_SCORE LIKE '[2-3]%'

-- Creating  Champions Class
         
    UPDATE RFM SET SEGMENT ='champions'
    WHERE RECENCY_SCORE LIKE '[5]%' AND FREQUENCY_SCORE LIKE '[4-5]%'


    SELECT * FROM RFM --- RFM Table Final Version
      
#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#    +                                                              RFM TABLE                                                                                    +
#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#    +                                                                                                                                                                     +
#    +                                    Customer_ID  Recency  Frequency  Monetary Recency_Score Frequency_Score Monetary_Score RF_Score RFM_Score              SEGMENT   +
#    +    0      5d1c466a-9cfd-11e9-9897-000d3a38a36f       32     202.00  45905.10             5               5              5       55       555            champions   +
#    +    1      d5ef8058-a5c6-11e9-a2fc-000d3a38a36f       98      68.00  36818.29             3               5              5       35       355      loyal_customers   +
#    +    2      73fd19aa-9e37-11e9-9897-000d3a38a36f       14      82.00  33918.10             5               5              5       55       555            champions   +
#    +    3      7137a5c0-7aad-11ea-8f20-000d3a38a36f       49      11.00  31227.41             4               5              5       45       455      loyal_customers   +
#    +    4      47a642fe-975b-11eb-8c2a-000d3a38a36f       35       4.00  20706.34             4               3              5       43       435  potential_loyalists   +
#    +                                                                                                                                                                     +
#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


###############################################################
# TASK 5: Action Time !
###############################################################
 
    -- 1. Examine the recency, frequency, and monetary averages of the segments.

      SELECT SEGMENT,
        COUNT(RECENCY) AS COUNT_RECENCY,
        AVG(RECENCY) AS AVG_RECENCY,
        COUNT(FREQUENCY) AS COUNT_FREQUENCY,
        ROUND(AVG(FREQUENCY),3) AS AVG_FREQUENCY,
        COUNT(MONETARY) AS COUNT_MONETARY,
        ROUND(AVG(MONETARY),3) AS AVG_MONETARY
     FROM RFM
     GROUP BY SEGMENT
 
    -- 2. With the help of RFM analysis, find the customers in the relevant profile for 2 cases;

        i. FLO is incorporating a new women's shoe brand. The product prices of the brand are above the general customer preferences. For this reason, it is requested to contact customers who will be interested in the promotion of the brand and product sales. The definition of this profile is as follows; loyal customers (champions, loyal_customers) with an average of over 250 TL and shopping in the women's category.

     (SELECT A.CUSTOMER_ID, B.interested_in_categories_12  
     FROM RFM AS A,
          flo AS B 
     WHERE  A.CUSTOMER_ID = B.master_id
     AND A.SEGMENT IN ('champions', 'loyal_customers')
     AND (B.customer_value_total / B.order_num_total) > 250
     AND B.interested_in_categories_12 LIKE '%KADIN%'
     )
 
 ii. Discounts of up to 40% are planned for men's and children's products. This discount is aimed at customers who have been good customers in the past, but have not been shopping for a long time, as well as new customers.


     (SELECT A.CUSTOMER_ID, B.interested_in_categories_12  
     FROM RFM AS A,
          flo AS B 
     WHERE  A.CUSTOMER_ID = B.master_id
     AND A.SEGMENT IN ('cant_loose', 'hibernating', 'new_customers')
     AND B.interested_in_categories_12 LIKE '%ERKEK%' OR B.interested_in_categories_12 LIKE '%COCUK%'
     )


