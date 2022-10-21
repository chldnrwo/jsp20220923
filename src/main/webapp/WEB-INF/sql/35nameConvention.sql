-- table명, 컬럼명 작성 관습
-- 회사의 규칙을 따르라
-- 대소문자 구분 안함
-- snake_lower_case
-- your_car_name

-- 강의에서는 lowerCamelCase
-- 컬럼명 : lowerCamelCase
-- 테이블명 : UpperCamelCase
CREATE TABLE myTable09(
	yourCarName VARCHAR(255)
);

INSERT INTO myTable09 (yourcarname)
VALUES ('tesla');
INSERT INTO myTable09 (yourcarname)
VALUES ('kia');

SELECT * FROM myTable09;
SELECT * FROM mytable09; -- x

