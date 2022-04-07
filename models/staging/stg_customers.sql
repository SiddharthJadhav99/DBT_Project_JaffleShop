with customers as (
select
    ID as customer_id,
    FIRST_NAME,
    LAST_NAME,

    from dbt_fundamentals.customers

)
select * from customers