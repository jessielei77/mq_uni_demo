
    
    

select
    course_id as unique_field,
    count(*) as n_records

from mq_uni_demo.processing.course_stg
where course_id is not null
group by course_id
having count(*) > 1


