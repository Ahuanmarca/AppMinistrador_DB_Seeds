-- Get Account Cashflow By Month

SELECT 
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    SUM(CASE WHEN amount >= 0 THEN amount ELSE 0 END) AS income,
    SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) AS outcome
FROM 
    banking_transactions
WHERE
    EXTRACT(MONTH FROM date) = 1
    AND EXTRACT(YEAR FROM date) = 2023
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date);
