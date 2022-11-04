CREATE TABLE courses
(
    course_id          SERIAL,
    course_name        VARCHAR NOT NULL,
    duration_of_course VARCHAR NOT NULL,
    CONSTRAINT courses_pk PRIMARY KEY (course_id)
);
CREATE TABLE groups
(
    group_id          SERIAL,
    group_name        VARCHAR NOT NULL,
    year_of_admission INT     NOT NULL,
    CONSTRAINT groups_pk PRIMARY KEY (group_id)
);
CREATE TABLE teachers
(
    teacher_id               SERIAL,
    teacher_name_and_surname VARCHAR NOT NULL,
    post                     VARCHAR NOT NULL,
    CONSTRAINT teachers_pk PRIMARY KEY (teacher_id)
);
CREATE TABLE students
(
    student_id     SERIAL,
    student_name   VARCHAR NOT NULL,
    group_id       INT     NOT NULL REFERENCES groups (group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    city_of_living VARCHAR NOT NULL,
    CONSTRAINT students_pk PRIMARY KEY (student_id)

);
CREATE TABLE schedule
(
    lesson_id          SERIAL,
    course_id          INT     NOT NULL REFERENCES courses (course_id) ON UPDATE CASCADE ON DELETE CASCADE,
    day                DATE    NOT NULL,
    time_of_starting   TIME    NOT NULL,
    lesson_name        VARCHAR NOT NULL,
    group_id           INT     NOT NULL REFERENCES groups (group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    teacher_id         INT     NOT NULL REFERENCES teachers (teacher_id) ON UPDATE CASCADE ON DELETE CASCADE,
    duration_of_lesson TIME    NOT NULL,
    CONSTRAINT schedule_pk PRIMARY KEY (lesson_id)
);

CREATE TABLE homeworks
(
    homework_id          SERIAL,
    homework_description VARCHAR NOT NULL,
    max_score            INT     NOT NULL,
    deadline             DATE    NOT NULL,
    CONSTRAINT homeworks_pk PRIMARY KEY (homework_id)
);

