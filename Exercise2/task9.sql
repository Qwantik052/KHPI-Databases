SELECT student.student_id AS "Student ID", student.first_name AS "First name", student.last_name AS "Last name", AVG(mark.value) AS "Mark on average"
FROM student
LEFT JOIN mark ON student.student_id = mark.student_id
GROUP BY student.student_id;