SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignments_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date is NULL
GROUP BY students.id
ORDER BY average_assignments_duration DESC;