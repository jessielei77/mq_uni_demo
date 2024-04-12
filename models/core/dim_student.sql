{{
    config(
        materialized = 'table'
    )
}}
with student as (

    select * from {{ ref('student_stg') }} 

),

final as (

    select
        student.student_id AS student_key,
        student.first_name AS first_name, 
        student.last_name AS last_name,
        student.email AS email
    FROM 
        student
)

select * from final
