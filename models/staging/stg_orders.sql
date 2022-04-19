with orders as(
    select 
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    from {{source("shop", "orders")}}
    where id != 0 and user_id != 0 and string(order_date) != 'null' and status != 'null'
)
select * from orders