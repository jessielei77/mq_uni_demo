select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    unit_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.dim_unit
where unit_key is not null
group by unit_key
having count(*) > 1



      
    ) dbt_internal_test