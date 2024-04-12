
with ue as (

    select * from mq_uni_demo.processing.student_unit_enrolment_stg 

),

sca as (

    select * from mq_uni_demo.processing.student_course_admission_stg 

),

stu as (

    select * from mq_uni_demo.processing.student_stg 

),


final as (

    select
        ue.student_unit_enrolment_id as student_unit_enrolment_key,
        ue.unit_id as unit_key,
        sca.course_id as course_key,
        sca.student_id as student_key,
        ue.student_course_admission_id as course_admission_key,
        ue.enrolment_date AS enrolment_date_key,
        ue.enrolment_status AS enrolment_status, 
        ue.fee_amount AS fee_amount,
        ue.unit_mark AS unit_mark
        FROM 
            ue
        LEFT JOIN 
            sca
            ON ue.student_course_admission_id = sca.student_course_admission_id
)

select * from final