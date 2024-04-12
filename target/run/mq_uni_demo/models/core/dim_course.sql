
  
    

        create or replace transient table mq_uni_demo.demo.dim_course
         as
        (
with course as (

    select * from mq_uni_demo.processing.course_stg 

),

final as (
    
    select
        course.course_id AS course_key,
        course.course_code AS course_code, 
        course.course_title AS course_title
    from
        course
)

select * from final
        );
      
  