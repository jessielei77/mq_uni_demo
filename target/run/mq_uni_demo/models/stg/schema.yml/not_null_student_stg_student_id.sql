select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select student_id
from mq_uni_demo.processing.student_stg
where student_id is null



      
    ) dbt_internal_test