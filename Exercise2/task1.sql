SELECT sgroup.name AS "Group name", COUNT(student.student_id) AS "Amount of Students"
FROM sgroup
LEFT JOIN student ON sgroup.group_id = student.group_id
GROUP BY sgroup.group_id;