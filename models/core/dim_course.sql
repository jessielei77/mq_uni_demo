{{
    config(
        materialized = 'table'
    )
}}
with course as (

    select * from {{ ref('course_stg') }} 

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
