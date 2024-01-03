WITH payments AS (
SELECT orderid as order_id,
    amount/100 as amount
FROM `dbt-tutorial.stripe.payment`
)

SELECT *
FROM payments
