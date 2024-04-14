{% snapshot dim_course_scd2 %}

{{
    config(
        target_schema='demo',
        unique_key='course_key',
        strategy='timestamp',
        updated_at='load_timestamp'
    )

}}

    select 
        course_id AS course_key,
        course_code AS course_code, 
        course_title AS course_title,
        load_timestamp AS load_timestamp
    from 
        {{ source('processing', 'course_stg_scd2') }}


{% endsnapshot %}