# MusicBox User Behavior Analysis and Churn Prediction 

## Project Overview

### 1. Data
MusicBox is one of the most popular Chinese music apps. 

The data used in this project is their user log files during 2017-03-01 to 2017-05-12. Total file size is around 15GB.
The data sits on AWS, accessible to the public.

There are 3 types of logs -  play, download , search. 

Play log has details of users' play time, songid, song length, while download and search log has only the footprint when and what user search and download.

### 2. Work Flow
I used Pyspark to do all the data cleaning, feature tranformation and engineering and finally model building due to the sheer size of the log files.

1. Download all log files from url.ipynb - scape the log files from AWS using request and BeautifulSoup, and consolidate the 3 types of daily logs into 3 individual datasets for play, download and search.
2. Play_Logs_Clean_Preprocessing_PySpark.ipynb -  data cleaning for play logs, remove invalid records and outliers, define the timeframe for churn analysis. 
3. Download_Search_Logs_Clean_Preprocessing_PySpark.ipynb - data preprocessing for download and search logs.
4. Feature Engineering.ipynb - feature engineering for the churn prediction, create frequency and recency features in different look-back window for the 3 types of activities. 
5. Feature Consolidation & EDA.ipynb - consolidate the play, download and search datasets into one holitic dataset on the user_id level, explore the relationship between the engineered features and the churn outcome.
6. Build models to predict churn SparkML.ipynb - build classification models to predict user churn and uncover the most important factors that can be used to foretell the user churn.

### 3. Busiess Impact
MusicBox can use these information to know when to further engage which group of users to prevent the users from churning. 

