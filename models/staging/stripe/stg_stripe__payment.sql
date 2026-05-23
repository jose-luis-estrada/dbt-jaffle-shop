WITH
SOURCE AS(
    SELECT * FROM {{ source('stripe', 'payment')}}
),

RENAMED AS (
    SELECT
        id AS payment_id,
        orderid AS order_id,
        paymentmethod AS payment_method,
        status AS payment_status,
        amount AS payment_amount,
        created AS payment_created,
        _batched_at

    FROM SOURCE
)

SELECT * FROM RENAMED