SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignments_duration, 
AVG(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id 
WHERE students.end_date is NULL
GROUP BY students.id
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignments_duration;