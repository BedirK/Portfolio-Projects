 /*                                                               ####################################
                                                        # Customer Segmentation - RFM Analysis using FLO's Dataset #
                                                                  ####################################


#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#    +                                                               BEFORE                                                                                                                                                                                                                                                                       +
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


#    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#    +                                                               AFTER                                                                                     +
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
*/


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


###############################################################
# TASK 2: Calculating RFM Metrics
###############################################################


###############################################################
# TASK 3: Calculating RF and RFM Scores
###############################################################


###############################################################
# TASK 4: Segment Definitions
###############################################################


###############################################################
# TASK 5: Action Time !
###############################################################
     1. Examine the recency, frequency, and monetary averages of the segments.
     2. With the help of RFM analysis, find the customers in the relevant profile for 2 cases;

        i. FLO is incorporating a new women's shoe brand. The product prices of the brand are above the general customer preferences. For this reason, it is requested to contact customers who will be interested in the promotion of the brand and product sales. The definition of this profile is as follows; loyal customers (champions, loyal_customers) with an average of over 250 TL and shopping in the women's category.
        ii. Discounts of up to 40% are planned for men's and children's products. This discount is aimed at customers who have been good customers in the past, but have not been shopping for a long time, as well as new customers.

*/
/*
###############################################################
# GÖREV 1: Veriyi  Hazırlama ve Anlama (Data Understanding)
###############################################################
#Veri setinde;
        # a. ılk 10 gözlem,
        # b. Değişken isimleri,
        # c. Boyut,
        # d. Boş değer,
        # e. Değişken tipleri, incelemesi yapınız.

*/



-- a. Ilk 10 gözlem
SELECT TOP 10 * FROM flodb.dbo.flo

SELECT  * FROM flodb.INFORMATION_SCHEMA.COLUMNS


-- b. Değişken isimleri
SELECT COLUMN_NAME AS DEGISKEN_ISIMLERI
FROM flodb.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'FLO'
;


--c. Boyut
SELECT COUNT(*) AS SATIR_SAYISI , 
       (SELECT COUNT(COLUMN_NAME) AS DEGISKEN_ISIMLERI
    FROM flodb.INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'FLO') AS KOLON_SAYISI
FROM flodb.dbo.flo 
;

-- d. Boş değer
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
--SELECT * FROM flodb.dbo.flo WHERE store_type IS NULL;


-- e. Değişken tipleri incelemesi

SELECT COLUMN_NAME, DATA_TYPE 
FROM flodb.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'FLO'
;

-- e. Kısıtlı Databaseden, Playground da tablo olusturma

SELECT * FROM flodb.dbo.flo

SELECT *
INTO flo
FROM flodb.dbo.flo

-- WHERE 1 = 0;  -- Bu koşul hiçbir satırın seçilmemesini sağlar, sadece yapısı kopyalanır

SELECT * FROM flo

-- 3. Omnichannel müşterilerin hem online'dan hemde offline platformlardan alışveriş yaptığını ifade etmektedir.
-- Herbir müşterinin toplam alışveriş sayısı ve harcaması için yeni değişkenler oluşturun.

ALTER TABLE flo ADD order_num_total AS (order_num_total_ever_online + order_num_total_ever_offline);
SELECT * FROM flo

ALTER TABLE flo ADD customer_value_total AS (customer_value_total_ever_offline + customer_value_total_ever_online);
SELECT * FROM flo


-- 4. Alışveriş kanallarındaki müşteri sayısının, ortalama alınan ürün sayısının ve ortalama harcamaların dağılımına bakınız.

SELECT order_channel, 
       COUNT(master_id) AS COUNT_MASTER_ID, 
     ROUND(AVG(order_num_total), 0) AS AVG_ORDER_NUM_TOTAL, 
     ROUND(AVG(customer_value_total), 0) AS AVG_CUSTOMER_VALUE_TOTAL 
FROM flo
GROUP BY order_channel;


-- # 6. En fazla kazancı getiren ilk 10 müşteriyi sıralayınız.
SELECT TOP 10 * FROM flo ORDER BY customer_value_total DESC;

-- # 7. En fazla siparişi veren ilk 10 müşteriyi sıralayınız.
SELECT TOP 10 * FROM flo ORDER BY order_num_total DESC;

/*
###############################################################
# GÖREV 2: RFM Metriklerinin Hesaplanması
###############################################################
*/

-- # Veri setindeki en son alışverişin yapıldığı tarihten 2 gün sonrasını analiz tarihi olarak alınacaktır.
-- 2021-05-30 max tarihtir.
SELECT MAX(last_order_date) AS MAX_SON_ALISVERIS_TARIHI FROM flo;

-- analysis_date = (2021,6,1)
-- customer_id, recency, freqcy ve monetary değerlerinin yer aldığı yeni bir rfm adında tablo oluşturunuz.
SELECT master_id AS CUSTOMER_ID,
       DATEDIFF(DAY, last_order_date, '20210601') AS RECENCY,
     order_num_total AS FREQUENCY,
     customer_value_total AS MONETARY,
     NULL RECENCY_SCORE,
     NULL FREQUENCY_SCORE,
     NULL MONETARY_SCORE
INTO RFM
FROM flo
;

-- Recency, Frequency ve Monetary değerlerinin incelenmesi
SELECT * FROM RFM;

/*
###############################################################
# GÖREV 3: RF ve RFM Skorlarının Hesaplanması (Calculating RF and RFM Scores)
###############################################################
#  Recency, Frequency ve Monetary metriklerinin 1-5 arasında skorlara çevrilmesi ve
# Bu skorları recency_score, frequency_score ve monetary_score olarak kaydedilmesi
*/

-- RECENCY_SCORE Oluşturulması
UPDATE RFM SET RECENCY_SCORE = 
(SELECT SCORE FROM
(SELECT A.*,
        NTILE(5) OVER(ORDER BY Recency DESC) SCORE
FROM RFM AS A
) T 
WHERE T.Customer_ID = RFM.Customer_ID
);

SELECT * FROM RFM

-- FREQUENCY_SCORE Oluşturulması
UPDATE RFM SET FREQUENCY_SCORE = 
(SELECT SCORE FROM
(SELECT A.*,
        NTILE(5) OVER(ORDER BY Frequency) AS SCORE
FROM RFM AS A
) T 
WHERE T.Customer_ID = RFM.Customer_ID
);

SELECT * FROM RFM

-- MONETARY_SCORE Oluşturulması
UPDATE RFM SET MONETARY_SCORE = 
(SELECT SCORE FROM
(SELECT A.*,
        NTILE(5) OVER(ORDER BY Monetary) AS SCORE
FROM RFM AS A
) T 
WHERE T.Customer_ID = RFM.Customer_ID
);



-- Oluşan skorların incelenmesi
SELECT * FROM RFM;

-- # RECENCY_SCORE ve FREQUENCY_SCORE’u tek bir değişken olarak ifade edilmesi ve RF_SCORE olarak kaydedilmesi
ALTER TABLE RFM ADD RF_SCORE AS (CONVERT(VARCHAR,RECENCY_SCORE) + CONVERT(VARCHAR,FREQUENCY_SCORE));

SELECT * FROM RFM;

-- # RECENCY_SCORE ve FREQUENCY_SCORE ve MONETARY_SCORE'u tek bir değişken olarak ifade edilmesi ve RFM_SCORE olarak kaydedilmesi
ALTER TABLE RFM ADD RFM_SCORE AS (CONVERT(VARCHAR,RECENCY_SCORE) + CONVERT(VARCHAR,FREQUENCY_SCORE) + CONVERT(VARCHAR, MONETARY_SCORE));


-- Son duruma göz atılması
SELECT * FROM RFM;

/*
###############################################################
# GÖREV 4: RF Skorlarının Segment Olarak Tanımlanması
###############################################################
# Oluşturulan RFM skorların daha açıklanabilir olması için segment tanımlama ve RF_SCORE'u segmentlere çevirme
*/

--SEGMENT adında yeni bir kolon oluşturma
ALTER TABLE RFM ADD SEGMENT VARCHAR(50);

-- Hibernating sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='hibernating'
WHERE RECENCY_SCORE LIKE '[1-2]%' AND FREQUENCY_SCORE LIKE '[1-2]%'

SELECT * FROM RFM;

-- at Risk sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='at_Risk'
WHERE RECENCY_SCORE LIKE '[1-2]%' AND FREQUENCY_SCORE LIKE '[3-4]%'

-- Can't Loose sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='cant_loose'
WHERE RECENCY_SCORE LIKE '[1-2]%' AND FREQUENCY_SCORE LIKE '[5]%'

-- About to Sleep sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='about_to_sleep'
WHERE RECENCY_SCORE LIKE '[3]%' AND FREQUENCY_SCORE LIKE '[1-2]%'

-- Need Attention sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='need_attention'
WHERE RECENCY_SCORE LIKE '[3]%' AND FREQUENCY_SCORE LIKE '[3]%'

-- Loyal Customers sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='loyal_customers'
WHERE RECENCY_SCORE LIKE '[3-4]%' AND FREQUENCY_SCORE LIKE '[4-5]%'

-- Promising sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='promising'
WHERE RECENCY_SCORE LIKE '[4]%' AND FREQUENCY_SCORE LIKE '[1]%'

-- New Customers sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='new_customers'
WHERE RECENCY_SCORE LIKE '[5]%' AND FREQUENCY_SCORE LIKE '[1]%'

-- Potential Loyalist sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='potential_loyalists'
WHERE RECENCY_SCORE LIKE '[4-5]%' AND FREQUENCY_SCORE LIKE '[2-3]%'

-- Champions sınıfının oluşturulması
UPDATE RFM SET SEGMENT ='champions'
WHERE RECENCY_SCORE LIKE '[5]%' AND FREQUENCY_SCORE LIKE '[4-5]%'

SELECT RFM_SCORE, SEGMENT FROM RFM;

/*
###############################################################
# GÖREV 5: Aksiyon zamanı!
###############################################################
# 1. Segmentlerin recency, frequnecy ve monetary ortalamalarını inceleyiniz.
*/

SELECT SEGMENT,
       COUNT(RECENCY) AS COUNT_RECENCY,
     AVG(RECENCY) AS AVG_RECENCY,
     COUNT(FREQUENCY) AS COUNT_FREQUENCY,
     ROUND(AVG(FREQUENCY),3) AS AVG_FREQUENCY,
     COUNT(MONETARY) AS COUNT_MONETARY,
     ROUND(AVG(MONETARY),3) AS AVG_MONETARY
FROM RFM
GROUP BY SEGMENT
;

/*
# 2. RFM analizi yardımı ile 2 case için ilgili profildeki müşterileri bulunuz.

# a. FLO bünyesine yeni bir kadın ayakkabı markası dahil ediyor. Dahil ettiği markanın ürün fiyatları genel müşteri tercihlerinin üstünde. Bu nedenle markanın
# tanıtımı ve ürün satışları için ilgilenecek profildeki müşterilerle özel olarak iletişime geçilmek isteniliyor. Bu müşterilerin sadık, ortalama 250 TL üzeri ve
# kadın kategorisinden alışveriş yapan kişiler olması planlandı. Müşterilerin id numaralarını getiriniz.

*/

(SELECT A.CUSTOMER_ID, B.interested_in_categories_12  
FROM RFM AS A,
     flo AS B 
WHERE  A.CUSTOMER_ID = B.master_id
AND A.SEGMENT IN ('champions', 'loyal_customers')
AND (B.customer_value_total / B.order_num_total) > 250
AND B.interested_in_categories_12 LIKE '%KADIN%'
)
;


/*
# b. Erkek ve Çoçuk ürünlerinde %40'a yakın indirim planlanmaktadır. Bu indirimle ilgili kategorilerle ilgilenen geçmişte iyi müşterilerden olan ama uzun süredir
# alışveriş yapmayan ve yeni gelen müşteriler özel olarak hedef alınmak isteniliyor. Uygun profildeki müşterilerin id'lerini getiriniz.
*/

(SELECT A.CUSTOMER_ID, B.interested_in_categories_12  
FROM RFM AS A,
     flo AS B 
WHERE  A.CUSTOMER_ID = B.master_id
AND A.SEGMENT IN ('cant_loose', 'hibernating', 'new_customers')
AND B.interested_in_categories_12 LIKE '%ERKEK%' OR B.interested_in_categories_12 LIKE '%COCUK%'
)
;
