-- NULL 관련 함수
SELECT * FROM Products;
SELECT COUNT(Price) FROM Products;
SELECT AVG(Price) FROM Products;

-- IFNULL : 값이 없으면(NULL) 다른 값으로 바꿔서 조회
SELECT Price FROM Products;
SELECT IFNULL(Price, 0) FROM Products;

SELECT ProductID, ProductName, SupplierID, CategoryID, IFNULL(Price, 0) FROM Products;
SELECT AVG(IFNULL(Price, 0)) FROM Products;

-- Customers 테이블에 customername이 null이면 -> 'Anonymous'
SELECT * FROM Customers;
SELECT IFNULL(CustomerName, 'Anonymous') FROM Customers;