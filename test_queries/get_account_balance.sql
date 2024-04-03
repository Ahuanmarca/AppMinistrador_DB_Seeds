-- Get account balance by account_id
-- Sums all transactions, returns result
 
SELECT sum(amount) AS account_balance
FROM banking_transactions
WHERE account_id = 1;
