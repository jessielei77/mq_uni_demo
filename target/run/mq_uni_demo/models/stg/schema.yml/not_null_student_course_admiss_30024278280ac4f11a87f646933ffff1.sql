select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select student_course_admission_id
from mq_uni_demo.processing.student_course_admission_stg
where student_course_admission_id is null



      
    ) dbt_internal_test