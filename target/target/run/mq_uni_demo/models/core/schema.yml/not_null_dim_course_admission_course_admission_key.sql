select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select course_admission_key
from mq_uni_demo.demo.dim_course_admission
where course_admission_key is null



      
    ) dbt_internal_test