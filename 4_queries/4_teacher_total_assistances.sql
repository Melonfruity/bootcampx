SELECT DISTINCT teachers.name, cohorts.name as cohort, count(assistance_requests) as total_assistances
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON students.cohort_id = cohorts.id
  JOIN teachers ON teachers.id = assistance_requests.teacher_id
  WHERE cohorts.name = 'JUL02'
  GROUP BY teachers.name, cohorts.name
  ;

-- SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
-- FROM teachers
-- JOIN assistance_requests ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY teachers.name, cohorts.name
-- ORDER BY teacher;

-- CREATE TABLE users (
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(255),
--   birth_year SMALLINT,
--   member_since TIMESTAMP
-- );

-- ALTER TABLE users ADD COLUMN name VARCHAR(255);
-- ALTER TABLE users ADD COLUMN birth_year SMALLINT;
-- ALTER TABLE users ADD COLUMN member_since TIMESTAMP;

-- ALTER TABLE users ALTER COLUMN member_since [SET DEFAULT Now()]