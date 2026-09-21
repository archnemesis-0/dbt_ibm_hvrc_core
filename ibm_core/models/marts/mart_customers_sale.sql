select
    customer_id,
    customer_name,
    nation_name,
    region_name,

    count(order_id) as total_orders,
    sum(total_price) as total_spent,
    avg(total_price) as average_order_value,
    min(order_date) as first_order_date,
    max(order_date) as last_order_date

from {{ ref('int_customer_orders') }}

group by
    customer_id,
    customer_name,
    nation_name,
    region_name