{{ config(materialized='ephemeral')}}
with payments as (
    select * from {{ ref('stg_payments') }}
),

order_payments as (
    select 
    payment_id,
    order_id,
    payment_method,
    status,
    {{dollars_to_rupees('amount')}} as amount,
    created_at
    from payments
)

select * from order_payments