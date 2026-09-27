

select current_database();



-- Chart 1 Data: Monthly Revenue vs. Acquisition Cost 


WITH monthly_revenue AS (
    SELECT 
        month,
        SUM(amount) AS monthly_revenue
    FROM revenue
    GROUP BY month
),

acq_cost AS (
    SELECT 
        SUBSTRING(signup_date, 1, 7) AS month,
        SUM(acquisition_cost) AS monthly_acquisition_cost
    FROM customers
    WHERE customer_id IN (
        SELECT DISTINCT customer_id
        FROM revenue
    )
    GROUP BY SUBSTRING(signup_date, 1, 7)
)

SELECT 
    r.month,
    r.monthly_revenue,
    a.monthly_acquisition_cost
FROM monthly_revenue AS r
JOIN acq_cost AS a
    ON r.month = a.month
ORDER BY r.month;


-- Chart 2 Data : Total Revenue By Plan


SELECT
    c.plan_type,
    SUM(r.amount) AS total_revenue
FROM customers AS c
LEFT JOIN revenue AS r
    ON c.customer_id = r.customer_id
GROUP BY c.plan_type
ORDER BY total_revenue DESC;



-- Chart 3 Data: Customer Mix By Plan

select plan_type, 
count(distinct customer_id) as customer_count
from customers
group by plan_type


-- Chart 4 Data: Revenue Per Month By Plan

select r.month,
c.plan_type,
sum(r.amount) as total_revenue
from 
revenue as r 
left join 
customers c 
on r.customer_id=c.customer_id
group by month, plan_type 

union 

SELECT 
    r.month,
    'Total' AS plan_type,
    SUM(r.amount) AS total_revenue
FROM revenue AS r
GROUP BY r.month

ORDER BY month, plan_type

-- Chart 5 Data: Monthly Signups Per Plan

select substring(signup_date,1,7) as month, 
count(customer_id) as total_signups, 
plan_type
from customers
group by
substring(signup_date,1,7), 
plan_type

union 

select substring(signup_date,1,7) as month, 
count(customer_id) as total_signups, 
'Total' as plan_type
from customers 
group by substring(signup_date,1,7)

order by 
month,
plan_type


-- Chart 6 Data: Revenue per customer (by plan)

select 
c.plan_type, 
count (distinct r.customer_id) as total_customers, 
sum(r.amount) as total_revenue, 
sum(r.amount)/ count (distinct r.customer_id) as revenue_per_cust
from 
revenue as r 
left join
customers as c 
on 
r.customer_id= c.customer_id
group by c.plan_type

-- Chart 7: Total Active Customers Per Month

select s.month, 
c.plan_type, 
count(distinct s.customer_id) as active_customers
from subscriptions as s 
left join customers as c on 
s.customer_id = c.customer_id
group by month, plan_type

union 


select month, 
'Total' as plan_type,
count(distinct customer_id) as active_customers 
from subscriptions 
group by month 

order by month, plan_type


-- 
