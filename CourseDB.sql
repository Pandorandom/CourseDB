
CREATE DATABASE Coursera DEFAULT CHARACTER SET utf8;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Course;

CREATE TABLE User (
user_id INTEGER NOT NULL AUTO_INCREMENT KEY,
name VARCHAR(128) UNIQUE
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course (
course_id INTEGER NOT NULL AUTO_INCREMENT KEY,
title VARCHAR(128) UNIQUE
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Member (
user_id INTEGER,
course_id INTEGER,
role INTEGER,
CONSTRAINT FOREIGN KEY (user_id) REFERENCES User (user_id)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (user_id, course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

/*
Taliesin, si106, Instructor
Denver, si106, Learner
Juwairiyah, si106, Learner
Kainui, si106, Learner
Zoya, si106, Learner
Aisha, si110, Instructor
Artemis, si110, Learner
Danna, si110, Learner
Dennis, si110, Learner
Tyler, si110, Learner
Kirstin, si206, Instructor
Allisha, si206, Learner
Carra, si206, Learner
Idahosa, si206, Learner
Iliana, si206, Learner
*/


INSERT INTO User (name) VALUES ('Taliesin');
INSERT INTO User (name) VALUES ('Denver');
INSERT INTO User (name) VALUES ('Juwairiyah');
INSERT INTO User (name) VALUES ('Kainui');
INSERT INTO User (name) VALUES ('Zoya');
INSERT INTO User (name) VALUES ('Aisha');
INSERT INTO User (name) VALUES ('Artemis');
INSERT INTO User (name) VALUES ('Danna');
INSERT INTO User (name) VALUES ('Dennis');
INSERT INTO User (name) VALUES ('Tyler');
INSERT INTO User (name) VALUES ('Kirstin');
INSERT INTO User (name) VALUES ('Allisha');
INSERT INTO User (name) VALUES ('Carra');
INSERT INTO User (name) VALUES ('Idahosa');
INSERT INTO User (name) VALUES ('Iliana');

INSERT INTO Course (title) VALUES ('si106');
INSERT INTO Course (title) VALUES ('si110');
INSERT INTO Course (title) VALUES ('si206');

Course si106 course_id is: 1
Course si110 course_id is: 2
Course si206 course_id is: 3

Role = 1 - Instructor
Role = 0 - Student

INSERT INTO Member (user_id, course_id, role) VALUES (1, 1, 1);
INSERT INTO Member (user_id, course_id, role) VALUES (2, 1, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (3, 1, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (4, 1, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (5, 1, 0);

INSERT INTO Member (user_id, course_id, role) VALUES (6, 2, 1);
INSERT INTO Member (user_id, course_id, role) VALUES (7, 2, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (8, 2, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (9, 2, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (10, 2, 0);

INSERT INTO Member (user_id, course_id, role) VALUES (11, 3, 1);
INSERT INTO Member (user_id, course_id, role) VALUES (12, 3, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (13, 3, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (14, 3, 0);
INSERT INTO Member (user_id, course_id, role) VALUES (15, 3, 0);


SELECT User.name, Course.title, Member.role FROM User JOIN Member JOIN Course ON  User.user_id = Member.user_id AND Member.course_id = Course.course_id ORDER BY  Course.title, Member.role DESC, User.name

/*
JSON object of my assignment:

[
{"type":"header","version":"4.8.5","comment":"Export to JSON plugin for PHPMyAdmin"},
{"type":"database","name":"Coursera"},
{"type":"table","name":"Member","database":"Coursera","data":
[
{"name":"Taliesin","title":"si106","role":"1"},
{"name":"Denver","title":"si106","role":"0"},
{"name":"Juwairiyah","title":"si106","role":"0"},
{"name":"Kainui","title":"si106","role":"0"},
{"name":"Zoya","title":"si106","role":"0"},
{"name":"Aisha","title":"si110","role":"1"},
{"name":"Artemis","title":"si110","role":"0"},
{"name":"Danna","title":"si110","role":"0"},
{"name":"Dennis","title":"si110","role":"0"},
{"name":"Tyler","title":"si110","role":"0"},
{"name":"Kirstin","title":"si206","role":"1"},
{"name":"Allisha","title":"si206","role":"0"},
{"name":"Carra","title":"si206","role":"0"},
{"name":"Idahosa","title":"si206","role":"0"},
{"name":"Iliana","title":"si206","role":"0"}
]
}
]

*/
