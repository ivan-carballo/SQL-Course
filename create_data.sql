USE university;

INSERT INTO students (students_id, students_name) VALUES 
(1, 'Ivan'),
(2, 'Sheyla'),
(3, 'Luis'),
(4, 'Marisa');

INSERT INTO professors (professor_id, professors_name) VALUES
(1, 'danel'),
(2, 'Jesus'),
(3, 'Florencia');

INSERT INTO courses (courses_id, courses_name, professor_id) VALUES
(1, 'JS Vanilla', 3),
(2, 'React', 1),
(3, 'Github', 2),
(4, 'SQL', 1),
(5, 'Docker', 2);

INSERT INTO grades (grades_id, students_id, grade, courses_id) VALUES
(1, 1, 8, 1), 
(2, 1, 7, 2),
(3, 2, 8, 3),
(4, 2, '7.5', 4), 
(5, 3, 6, 3), 
(6, 3, '6.75', 5),
(7, 4, 6, 1), 
(8, 4, 4, 2);

INSERT INTO students_has_grades (students_id, grades_id) VALUES
(1, 1), 
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8);
