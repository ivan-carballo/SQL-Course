USE university;

SELECT professors.professors_name, AVG(grades.grade)
FROM professors
JOIN courses
ON professors.professor_id = courses.professor_id
JOIN grades
ON courses.courses_id = grades.courses_id
GROUP BY professors_name;


SELECT students_name, MAX(grades.grade)
FROM students
JOIN grades
ON students.students_id = grades.students_id
GROUP BY students_name;


SELECT students_name, courses.courses_name
FROM students
JOIN students_has_grades
ON students.students_id = students_has_grades.students_id
JOIN grades
ON students_has_grades.grades_id = grades.grades_id
JOIN courses
ON grades.courses_id = courses.courses_id
ORDER BY students_name;


SELECT courses.courses_name, AVG(grades.grade)
FROM courses
JOIN grades
ON courses.courses_id = grades.grades_id
GROUP BY courses.courses_name
ORDER BY grades.grade DESC;


SELECT students.students_name, professors.professors_name, COUNT(courses.courses_name)
FROM students
JOIN students_has_grades
ON students.students_id = students_has_grades.students_id
JOIN grades
ON students_has_grades.grades_id = grades.grades_id
JOIN courses
ON grades.courses_id = courses.courses_id
JOIN professors
ON courses.professor_id = professors.professor_id
GROUP BY students_name, professors_name
ORDER BY COUNT(courses.courses_name) DESC;