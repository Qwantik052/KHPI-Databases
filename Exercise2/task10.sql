SELECT student.student_id AS "Student ID", student.first_name AS "First name", student.last_name AS "Last name", COUNT(mark.value) AS "Submitted Exams"
FROM student
LEFT JOIN mark ON student.student_id = mark.student_id
WHERE student.student_id = 1
GROUP BY student.student_id;