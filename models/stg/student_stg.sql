with student as (

    select 
        id as student_id,
        first_name as first_name,
        last_name as last_name,
        email as email
    from
        {{ source('staging', 'student') }}

)

select *
from student
