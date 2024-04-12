select
    unit_title,
    enrolment_status,
    count(distinct student_key) as number_of_students
from
    {{ ref('fact_student_unit_enrolment') }} fsue
    inner join
    {{ ref('dim_unit') }} u
    on fsue.unit_key = u.unit_key
    group by     unit_title,
    enrolment_status;
