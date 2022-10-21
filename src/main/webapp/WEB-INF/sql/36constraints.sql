-- NOT NULL : NULL이면 안됨
CREATE TABLE MyTable10(
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

DESC MyTable10;
INSERT INTO MyTable10 (col1, col2) VALUES ('a','b');-- ok
INSERT INTO MyTable10 (col2) VALUES ('c'); -- ok
INSERT INTO MyTable10 (col1) VALUES ('d'); -- warning

SELECT * FROM MyTable10;

CREATE TABLE MyTable11(
	col1 INT,
    col2 INT NOT NULL
);
INSERT INTO MyTable11 (col1,col2) VALUES (3,4); -- ok
INSERT INTO MyTable11 (col2) VALUES (4);
INSERT INTO MyTable11 (col1, col2) VALUES (3, 0);
SELECT * FROM MyTable11;

