SELECT DISTINCT teachers.name, student_cohorts.name
  FROM assistance_requests
  JOIN (
    SELECT students.id as id, cohorts.name as name
      FROM students
      JOIN cohorts ON students.cohort_id = cohorts.id
      WHERE cohorts.name = 'JUL02'
  ) AS student_cohorts ON student_cohorts.id = assistance_requests.student_id
  JOIN teachers ON teachers.id = assistance_requests.teacher_id
  ;