SELECT course.name AS "Course", deadline.date AS "deadline due date", COALESCE(AVG(mark.value), 0) AS "Mark on average"
FROM deadline
LEFT JOIN mark ON deadline.deadline_id = mark.deadline_id
LEFT JOIN course ON deadline.course_id = course.course_id
WHERE deadline.deadline_id = 1
GROUP BY deadline.deadline_id, course.course_id;