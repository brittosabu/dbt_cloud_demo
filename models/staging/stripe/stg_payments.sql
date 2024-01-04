WITH payments AS (
SELECT orderid as order_id,
    status,
    amount/100 as amount
FROM {{ source('stripe', 'payment') }}
)

SELECT *
FROM payments
