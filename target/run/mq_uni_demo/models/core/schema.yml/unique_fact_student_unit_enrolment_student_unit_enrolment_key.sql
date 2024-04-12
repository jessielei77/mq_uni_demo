select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    student_unit_enrolment_key as unique_field,
    count(*) as n_records

from mq_uni_demo.demo.fact_student_unit_enrolment
where student_unit_enrolment_key is not null
group by student_unit_enrolment_key
having count(*) > 1



      
    ) dbt_internal_test