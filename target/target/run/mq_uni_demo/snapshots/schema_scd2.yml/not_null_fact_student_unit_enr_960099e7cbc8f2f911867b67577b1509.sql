select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select student_unit_enrolment_key
from mq_uni_demo.demo.fact_student_unit_enrolment_scd2
where student_unit_enrolment_key is null



      
    ) dbt_internal_test