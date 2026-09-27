# SaaS Dashboard Analytics

This dashboard provides a comprehensive view of SaaS revenue, customer growth, acquisition costs, and plan performance, highlighting monthly trends in revenue, signups, active customers, customer mix, and revenue per customer across plans. All SQL used to extract the data for the visualizations is available in `saas_dashboard_chart_data.sql`.

[Click here for source data](https://www.kaggle.com/datasets/halaturkialotaibi/saas-business-metrics-customers-plans-and-revenue/data)

<img width="2836" height="1492" alt="SaaS Analytics Dashboard" src="https://github.com/user-attachments/assets/026b2218-d8ce-4b92-a758-1c73dab99230" />

## Dashboard Insights

### 1. Monthly Revenue vs. Acquisition Cost

<img width="1400" height="497" alt="Monthly Revenue vs. Acquisition Cost" src="https://github.com/user-attachments/assets/5b49d47e-4938-476f-9802-2072a6b38a53" />

Revenue increases steadily from January 2024 through March 2025, followed by a sharp decline.

### 2. Total Revenue by Plan

<img width="428" height="465" alt="Total Revenue by Plan" src="https://github.com/user-attachments/assets/521556c0-be72-4de3-ab6e-41fa3f93f95c" />

Enterprise customers generate the largest share of total revenue.

### 3. Customer Mix by Plan

<img width="428" height="465" alt="Customer Mix by Plan" src="https://github.com/user-attachments/assets/7815acd2-6564-4ea8-a41b-c98928397e97" />

Customer distribution is relatively similar across plans, despite differences in revenue contribution.

### 4. Monthly Revenue by Plan

<img width="871" height="465" alt="Monthly Revenue by Plan" src="https://github.com/user-attachments/assets/345ddbd5-ca78-4949-ab63-d7ea1dcc965c" />

Changes in total monthly revenue are driven primarily by changes in Enterprise revenue.

### 5. Monthly Signups by Plan

<img width="575" height="481" alt="image" src="https://github.com/user-attachments/assets/74a76214-0c2f-4a43-a421-6486c7f06985" />

Monthly signup volumes remain relatively stable over the period analyzed.

### 6. Revenue per Customer by Plan

<img width="575" height="489" alt="Revenue per Customer by Plan" src="https://github.com/user-attachments/assets/fd62de5f-6211-40dd-8659-13ca26c456be" />

Enterprise customers generate the highest revenue per customer.

### 7. Total Active Customers per Month

<img width="575" height="489" alt="Total Active Customers per Month" src="https://github.com/user-attachments/assets/d7ce498b-74a5-4b12-bbc6-dff08f40561a" />

The number of active customers begins to decline around February–March 2025, coinciding with the decline in revenue.

## Key Findings

- Enterprise customers represent roughly one-third of the customer base but contribute approximately 67% of total revenue, indicating substantially higher revenue per customer compared with other plans.
- Revenue declines sharply after March 2025, occurring alongside a decline in active customers.
- Signup volumes remain relatively stable, suggesting that the decline in revenue is not accompanied by a comparable decline in new customer acquisition.
- Enterprise revenue has the greatest influence on overall revenue trends, making Enterprise customer activity an important driver of total revenue performance.

## Data & Code

The analysis was built using SQL to extract the data required for each visualization. The queries used to produce the dashboard data are available in:

`saas_dashboard_chart_data.sql`

[Source dataset](https://www.kaggle.com/datasets/halaturkialotaibi/saas-business-metrics-customers-plans-and-revenue/data)
