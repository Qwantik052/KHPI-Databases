ALTER TABLE deadline
DROP CONSTRAINT IF EXISTS fk_deadline_course;

ALTER TABLE mark
DROP CONSTRAINT IF EXISTS fk_mark_student,
DROP CONSTRAINT IF EXISTS fk_mark_deadline;

ALTER TABLE student
DROP CONSTRAINT IF EXISTS fk_student_group;

INSERT INTO course (name)
VALUES ('Physics'), ('Algorithms'), ('Mathematical Analysis'), ('Software Project'), ('Distributed systems');

INSERT INTO deadline (course_id, date, type)
VALUES (3, CURRENT_DATE - INTERVAL '10 days', 1), (5, CURRENT_DATE + INTERVAL '14 days', 0), 
(1, CURRENT_DATE - INTERVAL '2 month', 0), (1, CURRENT_DATE - INTERVAL '2 day', 1), (4, CURRENT_DATE + INTERVAL '1 day', 1);

INSERT INTO	mark (student_id, deadline_id, value)
VALUES (1, 1, 84), (1, 2, 96), (3, 1, 70), (5, 2, 100), (5, 4, 100);

INSERT INTO sgroup (name)
VALUES ('CS-121a'), ('CS-121b'), ('CS-123'), ('CS-120a'), ('CS-119');

INSERT INTO student (group_id,  first_name, last_name, code)
VALUES (1,'Volodymyr', 'Ivasyuk', NULL), (NULL, 'Serhiy', 'Zhadan', 798), (1, 'Sad', 'Svit', NULL),
(NULL, 'MetaMore', 'Fozzey', 123), (3,'Taras', 'Chubay', 057);

ALTER TABLE deadline
ADD CONSTRAINT fk_deadline_course
FOREIGN KEY (course_id) REFERENCES course(course_id);

ALTER TABLE mark
ADD CONSTRAINT fk_mark_student
FOREIGN KEY (student_id) REFERENCES student(student_id),
ADD CONSTRAINT fk_mark_deadline
FOREIGN KEY (deadline_id) REFERENCES deadline(deadline_id);

ALTER TABLE student
ADD CONSTRAINT fk_student_group
FOREIGN KEY (group_id) REFERENCES sgroup(group_id);
