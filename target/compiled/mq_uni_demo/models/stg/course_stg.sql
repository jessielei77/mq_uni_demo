with course as (

    select 
        id as course_id,
        course_code as course_code,
        course_title as course_title
    from
        mq_uni_demo.staging.course

)

select *
from course