# BASIC OVERVIEW OF DATA -- (EDA)--
#  1) Branch and their counts:
SELECT 
    Branch AS "Type of Branch",
    COUNT(*) AS "Count"
FROM walmart
GROUP BY Branch
ORDER BY "Count" DESC;


# 2) Category and their counts:
SELECT 
    category AS "Type of Category",
    COUNT(*) AS "Count"
FROM walmart
GROUP BY category;


# 3) Payment Method and their counts:
SELECT 
    payment_method AS "Type of Payment Method",
    COUNT(*) AS "Count"
FROM walmart
GROUP BY payment_method
order by count desc;

# 4) Top rated categories:
SELECT 
    COUNT(rating) AS "Ratings", 
    category 
FROM 
    walmart 
GROUP BY 
    category 
ORDER BY 
    Ratings DESC;
    
# Category count
SELECT COUNT(DISTINCT category)  FROM walmart;
#_____________________ Business Problems------

#Q1: What is the total quantity sold in each city and category combination?

SELECT city, category, SUM(total) AS total_qty_sold
FROM walmart
GROUP BY city, category
ORDER BY total_qty_sold DESC
LIMIT 10;

#Q2: What is the average rating for each category?
SELECT category, AVG(rating) AS avg_rating
FROM walmart
GROUP BY category
ORDER BY avg_rating DESC;

#Q3: Which branch contributed the most sales in terms of total revenue?
SELECT branch, SUM(total) AS total_sales
FROM walmart
GROUP BY branch
ORDER BY total_sales DESC
LIMIT 10;

#Q4:  What is the most preferred payment method in each city?
SELECT city, payment_method, COUNT(*) AS preferred_payment_method
FROM walmart
GROUP BY city, payment_method
ORDER BY preferred_payment_method DESC;

#Q4: What is the total profit for each city and category combination?
SELECT City, category, SUM(unit_price * quantity * profit_margin) AS total_profit
FROM walmart
GROUP BY City, category
ORDER BY total_profit DESC;

#Q6: What is total revenue and total profit for each category?
select category,
sum(total) as total_revenue,
sum(total * profit_margin) as profit
from walmart
group by 1;


#Q7: What is the most common payment method for each branch?
SELECT 
    branch,
    payment_method,
    COUNT(*) AS payment_count
FROM walmart
GROUP BY branch, payment_method
ORDER BY branch, payment_count DESC;

#Q8: What is the most popular category in each city based on quantity sold?
SELECT 
    city, 
    category, 
    SUM(quantity) AS total_quantity
FROM walmart
GROUP BY city, category
ORDER BY city, total_quantity DESC;

SELECT COUNT(DISTINCT category)  FROM walmart;
