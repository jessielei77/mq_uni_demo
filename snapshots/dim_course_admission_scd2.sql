{% snapshot dim_course_admission_scd2 %}

{{
    config(
        target_schema='demo',
        unique_key='course_admission_id',
        strategy='timestamp',
        updated_at='load_timestamp'
    )

}}

    select 
        {{ generate_surrogate_key(['student_course_admission_id','load_timestamp']) }} as course_admission_key,
        student_course_admission_id AS course_admission_id,
        course_admission_status AS course_admission_status, 
        status_effective_date AS status_effective_date_key,
        load_timestamp AS load_timestamp
    from 
        {{ source('processing', 'student_course_admission_stg_scd2') }}


{% endsnapshot %}
