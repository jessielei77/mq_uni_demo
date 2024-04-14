select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select unit_key
from mq_uni_demo.demo.dim_unit
where unit_key is null



      
    ) dbt_internal_test