INSERT INTO users (username, password, real_name, student_no)
SELECT '张三', '2023000001', '张三', '2023000001'
WHERE NOT EXISTS (SELECT 1 FROM users WHERE username = '张三');

INSERT INTO users (username, password, real_name, student_no)
SELECT 'teacher', '123456', '测试教师', 'T001'
WHERE NOT EXISTS (SELECT 1 FROM users WHERE username = 'teacher');

INSERT INTO users (username, password, real_name, student_no)
SELECT 'student', '888888', '测试学生', 'S001'
WHERE NOT EXISTS (SELECT 1 FROM users WHERE username = 'student');
