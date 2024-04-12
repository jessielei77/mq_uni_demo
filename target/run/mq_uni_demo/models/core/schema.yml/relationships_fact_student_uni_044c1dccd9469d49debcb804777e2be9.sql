select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select unit_key as from_field
    from mq_uni_demo.demo.fact_student_unit_enrolment
    where unit_key is not null
),

parent as (
    select unit_key as to_field
    from mq_uni_demo.demo.dim_unit
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test