SELECT course_admission_key
FROM {{ ref('dim_course_admission')}}
WHERE UPPER(course_admission_status)
NOT IN ('APPLIED','ADMITTED','WITHDRAWN','COMPLETED')
