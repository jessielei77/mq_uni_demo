{% snapshot dim_student_scd2 %}

{{
    config(
        target_schema='demo',
        unique_key='student_id',
        strategy='timestamp',
        updated_at='load_timestamp'
    )

}}

    select 
        {{ generate_surrogate_key(['student_id','load_timestamp']) }} as student_key,
        student_id AS student_id,
        first_name AS first_name, 
        last_name AS last_name,
        email AS email,
        load_timestamp AS load_timestamp
    from 
        {{ source('processing', 'student_stg_scd2') }}


{% endsnapshot %}
