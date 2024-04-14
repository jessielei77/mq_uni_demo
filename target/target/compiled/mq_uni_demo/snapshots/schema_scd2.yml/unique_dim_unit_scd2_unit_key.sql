
    
    

select
    unit_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.dim_unit_scd2
where unit_key is not null
group by unit_key
having count(*) > 1


