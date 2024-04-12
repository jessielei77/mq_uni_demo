{{
    config(
        materialized = 'table'
    )
}}
with unit as (

    select * from {{ ref('unit_stg') }} 

),

final as (

    select
        unit.unit_id AS unit_key,
        unit.unit_code AS unit_code, 
        unit.unit_title AS unit_title,
        unit.unit_credit_point AS unit_credit_point
    FROM 
        unit
)

select * from final
