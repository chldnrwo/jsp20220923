-- CONCAT : 스트링 연결한 결과 리턴
SELECT concat('ab', 'de');
SELECT concat('def', ' ', 'xyz', ' captain');

SELECT *FROM Customers;

SELECT CustomerID,
		CustomerName,
        CONCAT(Address, ' ' ,City) address
        FROM Customers;
        
-- 직원 테이블에서 firstName, LastName 연결해서 fullName으로 조회
SELECT CONCAT(FirstName, ' ', LastName) fullName
FROM Employees;

 