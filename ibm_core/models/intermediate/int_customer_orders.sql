select
    o.order_id,
    o.customer_id,
    c.name as customer_name,
    c.nation_name,
    c.region_name,
    o.order_status,
    o.total_price,
    o.order_date,
    o.order_priority

from {{ ref('stg_orders') }} o

join {{ ref('int_customers') }} c
    on o.customer_id = c.customer_id