with sca as (

    select 
        id as student_course_admission_id,
        student_id as student_id,
        course_id as course_id,
        course_admission_status as course_admission_status,
        status_effective_date as status_effective_date,
        admission_year as admission_year
    from
        mq_uni_demo.staging.student_course_admission

)

select *
from sca