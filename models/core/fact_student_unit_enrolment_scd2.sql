{{
    config(
        materialized = 'table'
    )
}}
with ue as (

    select * from {{ ref('student_unit_enrolment_stg') }} 

),

sca as (

    select distinct course_id,student_course_admission_id,student_id from {{ source('processing', 'student_course_admission_stg_scd2') }}

),

stu as (

    select distinct student_id from {{ source('processing', 'student_stg_scd2') }}

),


final as (

    select
        ue.student_unit_enrolment_id as student_unit_enrolment_key,
        ue.unit_id as unit_id,
        sca.course_id as course_id,
        sca.student_id as student_id,
        ue.student_course_admission_id as student_course_admission_id,
        ue.enrolment_date AS enrolment_date_key,
        ue.enrolment_status AS enrolment_status, 
        ue.fee_amount AS fee_amount,
        ue.unit_mark AS unit_mark
        FROM 
            ue
        LEFT JOIN 
            sca
            ON ue.student_course_admission_id = sca.student_course_admission_id
)

select * from final
