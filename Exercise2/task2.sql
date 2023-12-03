SELECT course.name AS "Course name", COALESCE(COUNT(deadline.deadline_id), 0) AS "Amount Of Midterms"
FROM course
LEFT JOIN deadline ON course.course_id = deadline.course_id AND deadline.type = 1
GROUP BY course.course_id;