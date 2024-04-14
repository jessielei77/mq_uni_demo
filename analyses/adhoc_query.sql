select
    unit_title,
    enrolment_status,
    count(distinct student_id) as number_of_students
from
    {{ ref('fact_student_unit_enrolment_scd2') }} fsue
    inner join
    {{ ref('dim_unit_scd2') }} u
    on fsue.unit_id = u.unit_id
    and fsue.enrolment_date_key between u.dbt_valid_from and coalesce(u.dbt_valid_to,'2999-12-31')
    group by     unit_title,
    enrolment_status;
