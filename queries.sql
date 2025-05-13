-- Query to see all students
SELECT * FROM Students;

-- Query to see all courses
SELECT * FROM Courses;

-- Query to see enrollments and corresponding student and course names
SELECT s.name, c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Query to see all students' grades in courses
SELECT s.name, c.course_name, g.grade
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
JOIN Courses c ON g.course_id = c.course_id;
