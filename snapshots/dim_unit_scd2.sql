{% snapshot dim_unit_scd2 %}

{{
    config(
        target_schema='demo',
        unique_key='unit_id',
        strategy='timestamp',
        updated_at='load_timestamp'
    )

}}

    select 
        {{ generate_surrogate_key(['unit_id','load_timestamp']) }} as unit_key,
        unit_id AS unit_id,
        unit_code AS unit_code, 
        unit_title AS unit_title,
        unit_credit_point AS unit_credit_point,
        load_timestamp AS load_timestamp
    from 
        {{ source('processing', 'unit_stg_scd2') }}


{% endsnapshot %}
