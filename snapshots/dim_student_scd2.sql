{% snapshot dim_student_scd2 %}

{{
    config(
        target_schema='demo',
        unique_key='student_id',
        strategy='timestamp',
        updated_at='load_timestamp'
    )

}}

SELECT * from processing.student_stg_scd2

{% endsnapshot %}
