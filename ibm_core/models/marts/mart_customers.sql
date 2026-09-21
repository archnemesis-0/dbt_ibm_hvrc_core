select
    customer_id,
    name as customer_name,
    address,
    phone_number,
    nation_name,
    region_name,
    market_segment,
    account_balance,

    case
        when account_balance >= 5000 then 'HIGH'
        when account_balance >= 0 then 'MEDIUM'
        else 'LOW'
    end as customer_value

from {{ ref('int_customers') }} 