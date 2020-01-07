  SELECT id, name, day, chapter, total_requests
      FROM assignments
      JOIN (
        SELECT assignment_id, count(*) as total_requests
        FROM assistance_requests
        GROUP BY assignment_id ) as requests 
      ON requests.assignment_id = assignments.id
      ORDER BY total_requests DESC;