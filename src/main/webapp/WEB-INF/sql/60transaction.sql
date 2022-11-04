-- UPDATE1
-- UPDATE2
USE w3schools;
CREATE TABLE Bank(
	customerId int PRIMARY KEY,
    balance int
);
DROP TABLE Bank;
INSERT INTO Bank(customerId, balance)
VALUES (1,10000),
	   (2, 50000);

SELECT * FROM Bank;
-- 송금 업무
-- 1번 고객이 2번 고객에게 5000원 송금
UPDATE Bank
SET balance = balance - 5000
WHERE customerId = 1;

UPDATE Bank
SET balance = balance + 5000
WHERE customerId = 2;

-- Transaction : 하나의 업무 여러 쿼리의 묶음
-- COMMIT : 진행된 내용을 DB에 반영함
-- ROLLBACK : 진행되고 있던 내용을 모두 원복함

-- AUTO COMMIT 여부 확인
SHOW VARIABLES WHERE Variable_name = 'autocommit';

--  auto commit --> disable
SET autocommit = 0;
SET autocommit = 1;
-- 송금업무
-- 2번 고객이 1번 고객에게 5000원 송금함
UPDATE Bank 
SET balance = balance - 5000
WHERE customerId = 2;

SELECT * FROM Bank;

UPDATE Bank
SET balance = balance + 5000
WHERE customerId=1;

COMMIT;
ROLLBACK;
