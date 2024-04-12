with unit as (

    select 
        id as unit_id,
        unit_code as unit_code,
        unit_title as unit_title,
        unit_credit_point as unit_credit_point
    from
        {{ source('staging', 'unit') }}

)

select *
from unit
