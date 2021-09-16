SELECT name, id, cohort_id
FROm students
WHERE end_date IS NULL
ORDER BY cohort_id;