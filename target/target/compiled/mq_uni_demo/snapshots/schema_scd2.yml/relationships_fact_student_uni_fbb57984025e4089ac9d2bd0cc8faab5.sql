
    
    

with child as (
    select unit_id as from_field
    from mq_uni_demo.demo.fact_student_unit_enrolment_scd2
    where unit_id is not null
),

parent as (
    select unit_id as to_field
    from mq_uni_demo.demo.dim_unit_scd2
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


