
    
    

select
    date_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.dim_date
where date_key is not null
group by date_key
having count(*) > 1


