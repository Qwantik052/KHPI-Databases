SELECT course.course_id AS "Course ID", course.name AS "Course name", COUNT(mark.value) AS "Submitted Exams"
FROM course
LEFT JOIN deadline ON course.course_id = deadline.course_id AND deadline.type = 1
LEFT JOIN mark ON mark.deadline_id = deadline.deadline_id AND mark.student_id = 5
GROUP BY course.course_id;