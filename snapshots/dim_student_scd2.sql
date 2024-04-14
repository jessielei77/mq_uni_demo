{% snapshot dim_student_scd2 %}

{{
    config(
        target_schema='demo',
        unique_key='student_key',
        strategy='timestamp',
        updated_at='load_timestamp'
    )

}}

    select 
        student_id AS student_key,
        first_name AS first_name, 
        last_name AS last_name,
        email AS email,
        load_timestamp AS load_timestamp
    from 
        {{ source('processing', 'student_stg_scd2') }}


{% endsnapshot %}