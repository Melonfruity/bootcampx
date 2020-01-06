SELECT cohorts.name as cohort_name, count(student.*) as student_count
  FROM students
  JOIN cohorts
  ON students.cohort_id = cohorts.id
  WHERE cohort_id IS NOT NULL
  GROUP BY cohorts.name
  HAVING count(student.*) >= 18
  ORDER BY count(*);