USE mydb1;

-- data type
-- 문자열
-- VARCHAR, CHAR
-- 수형
-- 날짜

-- 수
-- INT, DEC

-- 날짜
-- DATE, DATETIME

-- 문자열
CREATE TABLE myTable01(
	col1 VARCHAR(5),
    col2 VARCHAR(2)
);
INSERT INTO myTable01(col1,col2)
VALUES('abcde','ab');
INSERT INTO myTable01(col1,col2)
VALUES('abc','a');
SELECT * FROM myTable01;
INSERT INTO myTable01(col1,col2)
VALUES('abc','abc');

-- 이름 : VARCHAR(50)
-- 주소 : VARCHAR(255)

-- CHAR : 고정길이 데이터 저장
-- CHAR(size) : size만큼 저장됨
DROP TABLE myTable02;
CREATE TABLE myTable02(
	col1 VARCHAR(3),
    col2 CHAR(3)
);
INSERT INTO myTable02(col1, col2)
VALUES('abc','abc');
INSERT INTO myTable02(col1, col2)
VALUES('abc','abcd');
INSERT INTO myTable02(col1, col2)
VALUES('ab','ab'); -- ok 'ab' 'ab '

