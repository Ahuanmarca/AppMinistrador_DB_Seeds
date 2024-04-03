SELECT sum(amount) FROM banking_transactions
WHERE
    EXTRACT(YEAR FROM date) = EXTRACT(YEAR FROM CURRENT_DATE)
    AND EXTRACT(MONTH FROM date) = EXTRACT(MONTH FROM CURRENT_DATE)
    AND EXTRACT(DAY FROM date) <= EXTRACT(DAY FROM CURRENT_DATE)
    AND building_id = 1
    AND property_id IS NOT NULL;