-- CHECK : 조건에 맞는 데이터만 입력 가능
CREATE TABLE MyTable14(
	col1 INT,
    col2 INT,
    CHECK (col2>=0) 
);
INSERT INTO MyTable14 (col1, col2)
VALUES (333, 33333);
INSERT INTO MyTable14 (col1, col2)
VALUES (-333, 33333);
INSERT INTO MyTable14 (col1, col2)
VALUES (333, -33333); -- error

SELECT * FROM MyTable14;


