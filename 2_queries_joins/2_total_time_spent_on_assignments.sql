SELECT sum(assignment_submissionsduration) as total_duration
  FROM assignment_submissions
  FULL OUTER JOIN students
  ON assignment_submissions.student_id = students.id
  WHERE students.name = 'Ibrahim Schimmel';