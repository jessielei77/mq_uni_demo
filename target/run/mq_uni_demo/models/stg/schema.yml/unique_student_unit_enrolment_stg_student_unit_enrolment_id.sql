select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    student_unit_enrolment_id as unique_field,
    count(*) as n_records

from mq_uni_demo.processing.student_unit_enrolment_stg
where student_unit_enrolment_id is not null
group by student_unit_enrolment_id
having count(*) > 1



      
    ) dbt_internal_test