WITH orders AS (
SELECT *
FROM {{ ref('stg_orders') }}
),

payments AS (
SELECT *
FROM {{ ref('stg_payments') }}
)

SELECT 
    orders.order_id,
    orders.customer_id,
    payments.amount
FROM orders
JOIN payments USING (order_id)