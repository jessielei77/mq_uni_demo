select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    course_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.dim_course_scd2
where course_key is not null
group by course_key
having count(*) > 1



      
    ) dbt_internal_test