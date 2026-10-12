# customer-churn-analysis

## Business Problem

A business wants to understand customer churn and identify patterns associated with customers leaving the service.

The objective of this analysis  is to examine churn across contract type,customer tenure,monthly charges,support calls,payment methods and internet services.

This analysis uses Python,SQL,Excel and Power BI to transform customer data into meaningful insights that support data-driven decision-making.

## Key Business Questions

- What is the overall customer churn rate?
- Which contract types have the highest churn rate?
- How does the customer tenure relate to churn?
- How are monthly charges associated with churn?
- Do customers making more support calls show higher churn?
- How does churn vary across Payment methods?
- How does churn vary by internet service?
- Which age groups have higher churn rates?
- How does churn differ by gender?

## Dataset

The dataset is a Excel file containing 2,000 customer records,including customer ID,gender,age,tenure,contract type,internet services,monthly charges,total charges,payment method,support calls and churn status.

## Tools Used
- Python(Pandas)
- MySQL
- Excel
- Power BI

## Project Highlights

- Analyzed 2,000 customer records using Python,SQL,Excel, and Power BI.
- Used Pandas to explore customer data and identify churn patterns.
- Wrote SQL queries using aggregation,grouping,filtering and conditional calculations.
- Created an interactive Power BI dashboard with KPI cards,charts, a matrix and slicers.
- Analyzed churn across contract types, tenure groups, monthly charges, support calls, payment methods and internet services.
- Compared customer characteristics between churned and retained customers.

## Dashboard

The Power BI dashboard provides an interactive view of:
![Customer Churn Dashboard](screenshots/Dashboard.jpg)

- Total Customers
- Churned Customers
- Churn Rate
- Retained Customers
- Churn by Contract Type
- Churn by Tenure Group
- Churn by Monthly Charges
- Churn by Support Calls
- Churn by Payment Methods
- Churn by Internet Service
- Churn by Age Group and Gender


## Key Insights

- The overall customer churn rate was 23%.
- Month-to-Month customers had the highest churn rate at 29.38%.
- Customers with 0-12 months of tenure had a churn rate of 39.87%.
- Customers in the high monthly-charge group had a churn rate of 32.64%.
- Customers making six or more support calls had a churn rate of 33.93%.
- Electronic Checks users had the highest churn rate among payment methods at 27.83%.
- Churn rates were nearly identical for male and female customers.


## Business Recommendations

- Review the customer experience for month-to-month customers and explore suitable retention strategies.
- Focus on early-tenure customers with targeted onboarding and engagement.
- Review pricing and customer value perceptions among customers with high monthly charges.
- Investigate recurring customers issues among customers making frequent support calls.
- Evaluate the customer experince associated with Electronic Check payments.
- Monitor churn patterns regularly to identify changes and support retention planning.


## Project Structure

```text
Customer-Churn-Analysis/
├── data/
│   └── customer_churn_analysis_dataset.csv
├── powerbi/
│   └── customer_churn_dashboard.pbix
├── screenshots/
│   └── Dashboard.jpg
├── sql/
│   ├── 01_churn_analysis.sql
│   ├── 02_customer_analysis.sql
│   └── 03_service_analysis.sql
├── python/
│   └── customer_churn_analysis.ipynb
└── README.md
  















