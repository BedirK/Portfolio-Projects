# Customer Return Calculation with Rule-Based Classification

![1](https://github.com/BedirK/Portfolio-Projects/assets/103532330/396a8732-112f-4bde-add8-d7f216ce8bd2)

Photo by: https://online.hbs.edu/blog/post/how-to-calculate-roi-for-a-project

## Business Problem

A game company wants to create new level-based customer definitions(personas) by using some of the features and wants to create segments according to these new customer definitions. Also, they want to estimate how much they can earn on average.

For example: The company wants to determine how much a 25-year-old male user from Turkey, who is an IOS user, can earn on average.

## Story of Dataset

5000 observations, 5 different variables

The Persona.csv dataset contains the prices of the products sold by an international game company and some demographic information of the users who buy these products. The data set consists of records created in each sales transaction. This means that the table is not deduplicated. In other words, a user with certain demographic characteristics may have made more than one purchase.


- **Price**: Price of the game

- **Source**: The platform of the game was downloaded

- **Sex**: Gender of the user

- **Country**: The country where the user downloaded the game

- **Age**: Age of the user

## Project Assignments

### Assignment 1: Answer the following questions.

- **Q1**: Read the persona.csv file and show the general information about the dataset.

- **Q2**: How many unique SOURCE? What is their frequency?

- **Q3**: How many unique Prices are there?

- **Q4**: How many sales were made from each PRICE?

- **Q5**: How many sales were made from each COUNTRY?

- **Q6**: How much money was earned in total from sales by each COUNTRY?

- **Q7**: What are the average sales according to different SOURCE types?

- **Q8**: What are the PRICE averages according to the countries?

- **Q9**: What are the PRICE averages according to the SOURCES?

- **Q10**: What are the PRICE averages in the COUNTRY-SOURCE breakdown?

### Assignment 2: What are the average earnings in the breakdown of COUNTRY, SOURCE, SEX, and AGE

### Assignment 3: Sort the output by PRICE

### Assignment 4: Convert the names in the index to variable names

### Assignment 5: Convert the 'AGE' variable to a categorical variable and add it to "agg_df"

### Assignment 6: Define new level-based customers and add them as variables to the dataset.

### Assignment 7: Segment new customers (USA_ANDROID_MALE_0_18)

### Assignment 8: Classify the new customers and estimate how much money they can bring.

- **Question 1**: Which segment does a 33-year-old Turkish woman using ANDROID belong to and how much money is expected to bring on average?

- **Question 2**: Which segment does a 35-year-old French woman using IOS belong to and how much money is expected to bring on average?
