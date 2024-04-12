
  
    

        create or replace transient table mq_uni_demo.processing.unit_stg
         as
        (with unit as (

    select 
        id as unit_id,
        unit_code as unit_code,
        unit_title as unit_title,
        unit_credit_point as unit_credit_point
    from
        mq_uni_demo.staging.unit

)

select *
from unit
        );
      
  