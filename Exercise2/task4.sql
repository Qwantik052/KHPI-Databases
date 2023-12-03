SELECT course.name AS "Course", deadline.deadline_id AS "Looming deadlines"
FROM deadline
LEFT JOIN mark ON deadline.deadline_id = mark.deadline_id AND mark.student_id = 5
LEFT JOIN course ON deadline.course_id = course.course_id
WHERE mark.value IS NULL;