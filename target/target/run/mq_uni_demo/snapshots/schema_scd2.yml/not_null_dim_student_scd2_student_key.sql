select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select student_key
from mq_uni_demo.demo.dim_student_scd2
where student_key is null



      
    ) dbt_internal_test