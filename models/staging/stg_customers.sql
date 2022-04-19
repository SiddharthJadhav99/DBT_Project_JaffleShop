with customers as (
select distinct
    ID as customer_id,
    FIRST_NAME as first_name,
    LAST_NAME as last_name,

    from {{source("shop", "customers")}}
)
select * from customers