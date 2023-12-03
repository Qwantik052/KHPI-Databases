SELECT course.name AS "Course", COALESCE(AVG(mark.value), 0) AS "Mark on average"
FROM course
LEFT JOIN deadline ON course.course_id = deadline.course_id
LEFT JOIN mark ON deadline.deadline_id = mark.deadline_id
WHERE course.course_id = 1
GROUP BY course.course_id;