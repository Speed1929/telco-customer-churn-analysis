-- CREATE DATABASE churn_analysis;
USE churn_analysis;
-- SELECT * FROM churn LIMIT 10;
SELECT 
ROUND(AVG(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100, 2) AS churn_rate
FROM churn;

SELECT 
contract,
ROUND(AVG(CASE WHEN churn = 1 THEN 1 ELSE 0 END) * 100, 2) AS churn_rate
FROM churn
group by contract
order by churn_rate desc;

select 
churn,
round(avg(tenure), 2) as avg_tenure
from churn
group by churn;

select
churn,
round(avg(monthlycharges),2) as avg_monthly_charges
from churn
group by churn;

select count(*) as high_risk_customers
from churn 
where contract= 'month-to-month'
and tenure< 12
and monthlycharges> (
     select avg(monthlycharges)
     from churn
);

select 
seniorcitizen,
round(avg(case when churn =1 then 1 else 0 end) *100, 2) as churn_rate
from churn
group by seniorcitizen;

select 
paymentmethod,
round(avg(case when churn =1 then 1 else 0 end) *100, 2) as churn_rate
from churn
group by paymentmethod;

select 
techsupport,
round(avg(case when churn =1 then 1 else 0 end) *100, 2) as churn_rate
from churn
group by techsupport;

select 
internetservice,
round(avg(case when churn =1 then 1 else 0 end) *100, 2) as churn_rate
from churn
group by internetservice;

