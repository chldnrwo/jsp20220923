-- UNIQUE : 같은 값을 가질 수 없음
CREATE TABLE MyTable15(
	col1 INT,
    col2 INT UNIQUE
     
);
INSERT INTO MyTable15(col1, col2)
VALUES (1,1);
INSERT INTO MyTable15(col1, col2)
VALUES (1,2);
INSERT INTO MyTable15(col1, col2)
VALUES (1,1);
INSERT INTO MyTable15(col1, col2)
VALUES (1,2);
INSERT INTO MyTable15(col1)
VALUES (1);
SELECT * FROM MyTable15;

DESC MyTable15;
DESC MyTable14;
DESC MyTable13;
