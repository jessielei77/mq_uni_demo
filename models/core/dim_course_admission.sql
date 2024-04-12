{{
    config(
        materialized = 'table'
    )
}}
with ca as (

    select * from {{ ref('student_course_admission_stg') }} 

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
