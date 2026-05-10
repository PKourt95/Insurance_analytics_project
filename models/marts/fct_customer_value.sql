{{ config(materialized='table') }}

with customers as (
    select * from {{ source('insurance_raw', 'customers') }}
),

final as (
    select 
        id as customer_id,
        first_name,
        last_name,
        1000 as total_premium,
        200 as total_claims_amount
    from customers
)

select * from final