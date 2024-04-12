
  
    

        create or replace transient table mq_uni_demo.demo.dim_course_admission
         as
        (
with ca as (

    select * from mq_uni_demo.processing.student_course_admission_stg 

),

final as (
    select
        ca.student_course_admission_id AS course_admission_key,
        ca.course_admission_status AS course_admission_status, 
        ca.status_effective_date AS status_effective_date_key,
    FROM 
        ca
)

select * from final
        );
      
  