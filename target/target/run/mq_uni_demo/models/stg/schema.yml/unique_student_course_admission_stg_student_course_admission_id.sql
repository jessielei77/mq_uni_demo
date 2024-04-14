select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    student_course_admission_id as unique_field,
    count(*) as n_records

from mq_uni_demo.processing.student_course_admission_stg
where student_course_admission_id is not null
group by student_course_admission_id
having count(*) > 1



      
    ) dbt_internal_test