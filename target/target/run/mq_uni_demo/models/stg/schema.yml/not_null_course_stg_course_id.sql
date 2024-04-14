select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select course_id
from mq_uni_demo.processing.course_stg
where course_id is null



      
    ) dbt_internal_test