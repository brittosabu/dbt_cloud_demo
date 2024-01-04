WITH payments AS (
SELECT *
FROM {{ ref('stg_payments') }}
)

SELECT 
    order_id,
    SUM(amount) as total_amount 
FROM payments
GROUP BY 1 
HAVING total_amount < 0
