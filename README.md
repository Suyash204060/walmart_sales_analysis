# walmart_sales_analysis
Walmart sales analysis using Python and SQL.

This project is an end-to-end data analysis solution designed to extract critical business insights from Walmart sales data. We utilize Python for data processing and analysis, SQL for advanced querying, and structured problem-solving techniques to solve key business questions. The project is ideal for data analysts looking to develop skills in data manipulation, SQL querying, and data pipeline creation.

PROJECT STEPS :

1) Environment
Tools Used: Visual Studio Code (VS Code), Python, SQL (MySQL and PostgreSQL)
Goal: Create a structured workspace within VS Code and organize project folders for smooth development and data handling.

2) Set Up Kaggle API
API Setup: Obtain your Kaggle API token from Kaggle by navigating to your profile settings and downloading the JSON file.
Configure Kaggle:
Place the downloaded kaggle.json file in your local .kaggle folder.
Use the command kaggle datasets download -d <dataset-path> to pull datasets directly into your project.

3) Download Walmart Sales Data
Data Source: Use the Kaggle API to download the Walmart sales datasets from Kaggle.
Dataset Link: Walmart Sales Dataset
Storage: Save the data in the data/ folder for easy reference and access.

4)  Install Required Libraries and Load Data
Libraries: Install necessary Python libraries using:
pip install pandas numpy sqlalchemy mysql-connector-python psycopg2
Loading Data: Read the data into a Pandas DataFrame for initial analysis and transformations.

5)  Explore the Data
Goal: Conduct an initial data exploration to understand data distribution, check column names, types, and identify potential issues.
Analysis: Use functions like .info(), .describe(), and .head() to get a quick overview of the data structure ..


6) Data cleaning
   Remove Duplicates: Identify and remove duplicate entries to avoid skewed results.
Handle Missing Values: Drop rows or columns with missing values if they are insignificant; fill values where essential.
Fix Data Types: Ensure all columns have consistent data types (e.g., dates as datetime, prices as float).
Currency Formatting: Use .replace() to handle and format currency values for analysis.
Validation: Check for any remaining inconsistencies and verify the cleaned data.
Create New Columns: Calculate the Total Amount for each transaction by multiplying unit_price by quantity and adding this as a new column.

7)  Load Data into MySQL and PostgreSQL
Set Up Connections: Connect to MySQL and PostgreSQL using sqlalchemy and load the cleaned data into each database.
Table Creation: Set up tables in  MySQL ausing Python SQLAlchemy to automate table creation and data insertion.
Verification: Run initial SQL queries to confirm that the data has been loaded accurately.

8)  SQL Analysis:
9)  Business Problem-Solving and Exploratory Data Analysis (EDA)
Exploratory Data Overview (EDA):
Branch Analysis:
Count and categorize branches to understand distribution and sales contribution.

Category Insights:
Analyze and count product categories to evaluate variety and popularity.

Payment Method Analysis:
Identify and count usage of different payment methods to understand customer preferences.

Top-Rated Categories:
Rank product categories based on customer ratings to identify customer satisfaction levels.

Category Count:
Calculate the number of unique categories for inventory diversity insights.

Business Problems Addressed:
Sales Trends:
Analyze total quantity sold across cities and categories to identify high-performing combinations.

Customer Preferences:
Calculate the average rating for each category to gauge popularity and satisfaction.

Branch Revenue:
Identify branches contributing the most to total revenue for strategic focus.

Payment Preferences:
Determine the most preferred payment method in each city for operational optimization.

Profit Insights:
Evaluate total profit by city and category combinations to pinpoint lucrative markets.

Revenue and Profit by Category:
Compare total revenue and profit margins across categories to prioritize investments.

Branch Payment Patterns:
Identify the most common payment method for each branch to streamline processes.

City-Level Product Popularity:
Analyze the most popular product categories in each city based on quantity sold to tailor marketing strategies.



 


