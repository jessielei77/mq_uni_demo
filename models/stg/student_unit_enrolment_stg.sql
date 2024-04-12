with sue as (

    select 
        id as student_unit_enrolment_id,
        student_course_admission_id as student_course_admission_id,
        unit_id as unit_id,
        enrolment_date as enrolment_date,
        enrolment_status as enrolment_status,
        fee_amount as fee_amount,
        unit_mark as unit_mark
    from
        {{ source('staging', 'student_unit_enrolment') }}

)

select *
from sue
