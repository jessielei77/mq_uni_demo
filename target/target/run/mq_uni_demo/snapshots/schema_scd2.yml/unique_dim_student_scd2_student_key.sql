select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    student_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.dim_student_scd2
where student_key is not null
group by student_key
having count(*) > 1



      
    ) dbt_internal_test