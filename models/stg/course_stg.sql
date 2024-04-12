with course as (

    select 
        id as course_id,
        course_code as course_code,
        course_title as course_title
    from
        {{ source('staging', 'course') }}

)

select *
from course
