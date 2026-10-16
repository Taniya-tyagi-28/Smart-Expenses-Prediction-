create database smart_expenses;
use smart_expenses;

-- Q1 How much was spend each month
select sum(amount), month(Date) as Month 
from synthetic_expenses_500
group by month(Date) 
order by Month ;

-- Q2 Top three categories by total spending 

select category, sum(amount) as total_spend 
from synthetic_expenses_500
group by category
order by total_spend desc
 limit 3;
 
-- Q3 Find the average spend per day

select day(Date) as day,  avg(amount) as avg_spend 
from synthetic_expenses_500
group by day(Date)
order by day;

-- Q4 Most frequent used payment mode

select payment_mode , count(*) as usage_count
from synthetic_expenses_500 
group by payment_mode
order by usage_count desc
limit 1;

-- Q5 Day with the highest total spending 

select day(Date) as Day, sum(amount) as total_spending
from synthetic_expenses_500
group by day(Date)
order by total_spending desc
limit 1;

-- Q6 Category with the highest varience in expenses

 select category,variance(amount) as Variance
 from  synthetic_expenses_500
 group by category
 order by Variance DESC
 limit 1;
 
-- Q7 Total spending by category + payment mode

select category, payment_mode, sum(amount) as total_spending
from synthetic_expenses_500
group by category,payment_mode
order by total_spending;

-- Q8 Most expensive spend in each category

select category,sum(amount) as most_exp
from synthetic_expenses_500
group by category
order by most_exp desc;

--  Q9 Cumulative monthly spend trend

select year(Date) as year,
		month(Date) as month, 
        sum(Amount) as monthly_total,
        sum(sum(amount)) over (order by year(Date), month(Date)) as cumulative_total
from synthetic_expenses_500
group by year(Date),month(Date)
order by year,month;

-- Q10 Top 5 merchants/keywords from description

select description , sum(amount) as total_spend
from synthetic_expenses_500
group by description 
order by total_spend desc
limit 5;
