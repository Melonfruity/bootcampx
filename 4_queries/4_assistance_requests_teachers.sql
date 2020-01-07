SELECT count(*)
  FROM assistance_requests
  JOIN teachers
  ON teacher_id = teachers.id
  WHERE teachers.name = 'Waylon Boehm';