
  
    

        create or replace transient table mq_uni_demo.processing.student_stg
         as
        (with student as (

    select 
        id as student_id,
        first_name as first_name,
        last_name as last_name,
        email as email
    from
        mq_uni_demo.staging.student

)

select *
from student
        );
      
  