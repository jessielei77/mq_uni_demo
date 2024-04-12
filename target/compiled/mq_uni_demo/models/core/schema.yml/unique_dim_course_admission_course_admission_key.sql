
    
    

select
    course_admission_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.dim_course_admission
where course_admission_key is not null
group by course_admission_key
having count(*) > 1


