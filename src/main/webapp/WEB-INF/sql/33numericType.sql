-- DATA
-- Numeric
-- INT : 정수
-- DEC : 소수점이 있는 형식
-- int(size) size에 상관없이 저장은 다되고 출력 방식만 달라짐 ex) 0022 00022
USE mydb1;
CREATE TABLE myTable03(
	col1 INT(3),
    col2 INT(4),
    col3 INT --  -21억 ~ 21억
);
INSERT INTO myTable03(col1, col2, col3)
VALUES (999,9999,2100000000);
INSERT INTO myTable03(col1, col2, col3)
VALUES (9999,9999,2100000000);
INSERT INTO myTable03(col1, col2, col3)
VALUES (9999,9999,2200000000);
SELECT * FROM myTable03;

-- DEC 소수점이있는 형식 수 저장
CREATE TABLE myTable05(
	col1 DEC(3, 1),
    col2 DEC(5, 2)
);
INSERT INTO myTable05(col1, col2)
VALUES (10.5, 200.01);
INSERT INTO myTable05(col1, col2)
VALUES (100.5, 200.01);
INSERT INTO myTable05(col1, col2)
VALUES (10.55, 200.01); -- 깔려서 입력됨
SELECT * FROM myTable05;

-- INT -> java int, long
-- DEC -> java double, BigDecimal

