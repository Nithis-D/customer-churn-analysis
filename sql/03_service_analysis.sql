-- CUSTOMER CHURN ANALYSIS
-- Service Analysis
-- ==========================================================================================================

-- Q1. Which Contract Type Has the Highest Churn Rate?

SELECT
    CONTRACT_TYPE,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY CONTRACT_TYPE
ORDER BY CHURN_RATE DESC;

-- Month-to-month customers have the highest churn rate at 29.38%,
-- compared with 16.13% for two-year and 14.76% for one-year customers.


-- Q2. Do Support Calls Affect Churn?

SELECT
    CASE
        WHEN SUPPORT_CALLS <= 1 THEN '0-1'
        WHEN SUPPORT_CALLS <= 3 THEN '2-3'
        WHEN SUPPORT_CALLS <= 5 THEN '4-5'
        ELSE '6+'
    END AS SUPPORT_CALL_GROUP,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY SUPPORT_CALL_GROUP
ORDER BY CHURN_RATE DESC;

-- Churn increases as the number of support calls increases.
-- Customers making 6+ calls have the highest churn rate at 33.93%,
-- while customers making 0-1 calls have the lowest at 18.85%.
-- Frequent support interactions are associated with higher churn.


-- Q3. Does the Payment Method Affect Churn?

SELECT
    PAYMENT_METHOD,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY PAYMENT_METHOD
ORDER BY CHURN_RATE DESC;

-- Electronic Check has the highest churn rate at 27.83%,
-- while Debit Card has the lowest at 18.75%.
-- Payment method is associated with differences in churn.


-- Q4. Does Internet Service Affect Churn?

SELECT
    INTERNET_SERVICE,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY INTERNET_SERVICE
ORDER BY CHURN_RATE DESC;

-- Fiber Optic customers have the highest churn rate at 26.44%,
-- while DSL customers have the lowest at 18.56%.
-- Internet service type is associated with differences in churn.


-- Q5. Does Contract Type and Internet Service Together Affect Churn?

SELECT
    INTERNET_SERVICE,
    CONTRACT_TYPE,
    COUNT(*) AS TOTAL_CUSTOMERS,
    SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END) AS CHURNED_CUSTOMERS,
    ROUND(
        SUM(CASE WHEN CHURN = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS CHURN_RATE
FROM CUSTOMER_CHURN
GROUP BY INTERNET_SERVICE, CONTRACT_TYPE
ORDER BY CHURN_RATE DESC;

-- Month-to-month customers have high churn across internet service types.
-- Fiber Optic + Month-to-Month has the highest churn rate at 32.43%,
-- while DSL + One Year has the lowest at 10.05%.
-- This suggests contract type and internet service are associated with churn.
