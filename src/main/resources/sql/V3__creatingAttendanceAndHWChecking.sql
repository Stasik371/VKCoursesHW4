CREATE TABLE attendance
(
    attendance_id SERIAL,
    lesson_id     INT     NOT NULL REFERENCES schedule (lesson_id) ON UPDATE CASCADE ON DELETE CASCADE,
    student_id    INT     NOT NULL REFERENCES students (student_id) ON UPDATE CASCADE ON DELETE CASCADE,
    is_visited    BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT attendance_pk PRIMARY KEY (attendance_id)
);
CREATE TABLE homeworks_checking
(
    checkHW_id  SERIAL,
    homework_id INT     NOT NULL REFERENCES homeworks (homework_id) ON UPDATE CASCADE ON DELETE CASCADE,
    student_id  INT     NOT NULL REFERENCES students (student_id) ON UPDATE CASCADE ON DELETE CASCADE,
    score       INT     NOT NULL DEFAULT 0,
    description VARCHAR NOT NULL DEFAULT 'Дз не сделано.',
    CONSTRAINT homeworks_checking_pk PRIMARY KEY (checkHW_id)
);
INSERT INTO attendance(lesson_id, student_id, is_visited)
VALUES (1, 1, 'TRUE');
INSERT INTO attendance(lesson_id, student_id)
VALUES (2, 2);
INSERT INTO attendance(lesson_id, student_id)
VALUES (1, 3);
INSERT INTO attendance(lesson_id, student_id, is_visited)
VALUES (2, 4, 'TRUE');
INSERT INTO homeworks_checking(homework_id,student_id,score,description)
VALUES (1,1,5,'Молодец!');
INSERT INTO homeworks_checking(homework_id,student_id,score,description)
VALUES (2,3,3,'Можно лучше.');
INSERT INTO homeworks_checking(homework_id,student_id,score,description)
VALUES (1,2,4,'Почти молодец.');
