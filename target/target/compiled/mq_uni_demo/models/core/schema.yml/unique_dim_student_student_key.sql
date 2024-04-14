
    
    

select
    student_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.dim_student
where student_key is not null
group by student_key
having count(*) > 1


