select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT  unit_key,
        course_key,
        student_key,
        course_admission_key,
        enrolment_date_key,
FROM mq_uni_demo.demo.fact_student_unit_enrolment
WHERE UPPER(enrolment_status)
NOT IN ('ENROLLED','PASSED','FAILED','WITHDRAWN','PLANNED')
      
    ) dbt_internal_test