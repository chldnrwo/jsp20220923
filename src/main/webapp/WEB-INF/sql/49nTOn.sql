-- n:n 다대다 관계의 테이블
-- -> 새 테이블이 필요하다
DESC Student;
SELECT * FROM Student;
INSERT INTO Student(id, name, age, gender)
VALUES (5, 'park' ,50 , 'F');
-- 강의
CREATE TABLE Lecture(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARBINARY(255) NOT NULL
);
INSERT INTO Lecture (name)
VALUES('math'),('english');
SELECT * FROM Lecture;
SELECT * FROM Student;

DROP TABLE Lecture;
DESC Lecture;
INSERT INTO Student(name, age, gender)
VALUES('lee',40,'M');
DROP TABLE studentLecture;
-- 다대다는 테이블 하나 만들어야됨
CREATE TABLE StudentLecture(
	studentId INT NOT NULL,
	lectureId INT NOT NULL,
    FOREIGN KEY (studentId) REFERENCES Student(id),
    FOREIGN KEY (lectureId) REFERENCES Lecture(id),
    PRIMARY KEY (studentId, lectureId)
);

INSERT INTO StudentLecture(studentId, lectureId)
VALUES  (1, 1), (1, 2), (5, 1), (5, 2);


SELECT * FROM StudentLecture;