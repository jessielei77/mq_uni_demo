
    
    

select
    student_unit_enrolment_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.fact_student_unit_enrolment_scd2
where student_unit_enrolment_key is not null
group by student_unit_enrolment_key
having count(*) > 1


