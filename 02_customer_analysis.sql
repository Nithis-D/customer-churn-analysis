-- CUSTOMER CHURN ANALYSIS
-- Customer Analysis
-- ==========================================================================================================

-- Q1. Does Tenure Affect Churn?

SELECT
    CASE
        WHEN TENURE_MONTHS <= 12 THEN '0-12'
        WHEN TENURE_MONTHS <= 24 THEN '13-24'
        WHEN TENURE_MONTHS <= 48 THEN '25-48'
        ELSE '49-72'
    END AS TENURE_GROUP,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY TENURE_GROUP
ORDER BY CHURN_RATE DESC;

-- Churn decreases as customer tenure increases.
-- Customers with 0-12 months of tenure have the highest churn rate,
-- while customers with 49-72 months have the lowest.
-- This suggests newer customers are more likely to leave.


-- Q2. Do Monthly Charges Affect Churn?

SELECT
    CASE
        WHEN MONTHLY_CHARGES <= 50 THEN 'LOW'
        WHEN MONTHLY_CHARGES <= 100 THEN 'MEDIUM'
        ELSE 'HIGH'
    END AS CHARGE_GROUP,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY CHARGE_GROUP
ORDER BY CHURN_RATE DESC;

-- Customers with higher monthly charges have higher churn.
-- The churn rate is 32.64% for high charges compared with 11.53% for low charges.
-- This indicates an association between monthly charges and customer churn.


-- Q3. Does Age Affect Churn?

SELECT
    CASE
        WHEN AGE <= 30 THEN '18-30'
        WHEN AGE <= 45 THEN '31-45'
        WHEN AGE <= 60 THEN '46-60'
        ELSE '61+'
    END AS AGE_GROUP,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY AGE_GROUP
ORDER BY CHURN_RATE DESC;

-- Customers aged 61+ have the highest churn rate,
-- while customers aged 18-30 have the lowest.
-- Age shows some association with churn, but the differences are smaller
-- than those observed for tenure, monthly charges, and support calls.


-- Q4. Does Gender Affect Churn?

SELECT
    GENDER,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY GENDER
ORDER BY CHURN_RATE DESC;

-- There is almost no difference in churn between males (23.03%)
-- and females (22.97%).
-- Therefore, gender does not appear to be a meaningful factor in this dataset.