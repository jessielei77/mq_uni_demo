{% snapshot dim_course_scd2 %}

{{
    config(
        target_schema='demo',
        unique_key='course_id',
        strategy='timestamp',
        updated_at='load_timestamp'
    )

}}

    select 
        {{ generate_surrogate_key(['course_id','load_timestamp']) }} as course_key,
        course_id AS course_id,
        course_code AS course_code, 
        course_title AS course_title,
        load_timestamp AS load_timestamp
    from 
        {{ source('processing', 'course_stg_scd2') }}


{% endsnapshot %}
