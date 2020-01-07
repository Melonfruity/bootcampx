SELECT count(*)
  FROM assistance_requests
  JOIN students
  ON student_id = students.id
  WHERE students.name = 'Elliot Dickinson';