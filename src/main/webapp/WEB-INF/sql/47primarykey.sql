USE mydb2;

-- 학생 table
-- 이름, 나이, 성별
drop TABLE Student;

CREATE TABLE Student (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    age INT,
    gender VARCHAR(1)
);

INSERT INTO Student(id, name, age, gender)
VALUES (1, 'kim', 30, 'F');
INSERT INTO Student(id, name, age, gender)
VALUES (2, 'lee', 40, 'M');
INSERT INTO Student(name, age, gender)
VALUES ('choi', 50, 'F');

SELECT * FROM Student;

DELETE FROM Student WHERE id =2;
DELETE FROM Student WHERE id =5;

INSERT INTO Student(name, age, gender)
VALUES ('park', 60, 'M');

