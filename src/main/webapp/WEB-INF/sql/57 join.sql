 
 CREATE DATABASE mydb6;
USE mydb6;

CREATE TABLE TableA(
	col1 INT
);

CREATE TABLE TableB(
	c1 INT
);

INSERT INTO TableA (col1)
VALUES (1),(2),(3),(4),(5);

INSERT INTO TableB (c1)
VALUES (2),(4),(5),(7),(8);

SELECT * FROM TableA;
SELECT * FROM TableB;

-- INNER JOIN : 두 컬럼에 값이 모두 있는 경우만
SELECT * FROM TableA a JOIN TableB b ON a.col1 = b.c1;
-- INNER는 생략해도 됨
SELECT * FROM TableA a INNER JOIN TableB b ON a.col1 = b.c1;

-- Left outer join : inner join 결과 + 왼쪽 테이블의 레코드들
SELECT * FROM TableA a LEFT OUTER JOIN TableB b ON a.col1 = b.c1;

-- Right outer join : inner join 결과 + 오른쪽 테이블의 레코드들
SELECT * FROM TableA a RIGHT OUTER JOIN TableB b ON a.col1 = b.c1;
-- outer : 생략가능
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.col1 = b.c1;

-- mysql에서 cross join은 inner join과 같음, full outer join이라고도함
SELECT * FROM TableA a CROSS JOIN TableB b ON a.col1 = b.c1;
