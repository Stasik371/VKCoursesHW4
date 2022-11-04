INSERT INTO groups(group_name, year_of_admission)
VALUES ('java_21', 2021);
INSERT INTO groups(group_name, year_of_admission)
VALUES ('java_20', 2020);
INSERT INTO courses(course_name, duration_of_course)
VALUES ('Java от слов к делу', '10 занятий');
INSERT INTO teachers(teacher_name_and_surname, post)
VALUES ('Алексей Жуков', 'Старший программист');
INSERT INTO teachers(teacher_name_and_surname, post)
VALUES ('Евгений Ченцов', 'Серверный программист');
INSERT INTO students(student_name, group_id, city_of_living)
VALUES ('Стас Ковалев', 1, 'Москва');
INSERT INTO students(student_name, group_id, city_of_living)
VALUES ('Виктор Кнышов', 2, 'Москва');
INSERT INTO students(student_name, group_id, city_of_living)
VALUES ('Егор Князев', 1, 'Воронеж');
INSERT INTO students(student_name, group_id, city_of_living)
VALUES ('Сабина Булатова', 2, 'Санкт-Петербург');
INSERT INTO schedule(course_id, day, time_of_starting, lesson_name, group_id, teacher_id, duration_of_lesson)
VALUES (1, '2022-11-03', '20:00','ООП в Java', 1, 2, '3:00');
INSERT INTO schedule(course_id, day, time_of_starting, lesson_name, group_id, teacher_id, duration_of_lesson)
VALUES (1, '2022-11-03', '17:00','ООП в Java', 2, 2, '3:00');
INSERT INTO schedule(course_id, day, time_of_starting, lesson_name, group_id, teacher_id, duration_of_lesson)
VALUES (1, '2022-11-10', '17:00', 'Gradle', 2, 1, '3:00');
INSERT INTO schedule(course_id, day, time_of_starting, lesson_name, group_id, teacher_id, duration_of_lesson)
VALUES (1, '2022-11-10', '20:00', 'Gradle', 1, 1, '3:00');
INSERT INTO homeworks(homework_description, max_score, deadline)
VALUES ('ООП в Java. Создайте наследуемый класс', 5, '2022-11-10');
INSERT INTO homeworks(homework_description, max_score, deadline)
VALUES ('Создайте стандартный проект в gradle через терминал', 5, '2022-11-17');
