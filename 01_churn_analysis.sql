-- CUSTOMER CHURN ANALYSIS
-- Overall Churn Analysis
-- ==========================================================================================================

-- Q1. Overall Churn Rate

SELECT
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN;

-- The overall customer churn rate is 23%. Out of 2,000 customers,
-- 460 customers have churned while 1,540 customers have remained.


-- Q2. Churned vs Retained Customers

SELECT
    CHURN,
    ROUND(AVG(AGE), 2) AS AVG_AGE,
    ROUND(AVG(TENURE_MONTHS), 2) AS AVG_TENURE,
    ROUND(AVG(MONTHLY_CHARGES), 2) AS AVG_MONTHLY_CHARGES,
    ROUND(AVG(TOTAL_CHARGES), 2) AS AVG_TOTAL_CHARGES,
    ROUND(AVG(SUPPORT_CALLS), 2) AS AVG_SUPPORT_CALLS
FROM CUSTOMER_CHURN
GROUP BY CHURN;

-- Churned customers have lower average tenure and total charges,
-- but higher average monthly charges and support calls than retained customers.
-- This suggests these factors are associated with customer churn.