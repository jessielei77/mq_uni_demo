
    
    

select
    student_id as unique_field,
    count(*) as n_records

from mq_uni_demo.processing.student_stg
where student_id is not null
group by student_id
having count(*) > 1


