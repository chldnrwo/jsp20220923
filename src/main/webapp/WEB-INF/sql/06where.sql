-- WHERE : 결과 행의 조건을 작성할 수 있는 키워드
SELECT * 
FROM Customers 
WHERE Country = 'Mexico';

-- Customers 테이블에서 Country가 France인 레코드만 조회
SELECT * 
FROM Customers 
WHERE Country = 'France';

SELECT * 
FROM Suppliers 
WHERE Country = 'UK';

SELECT CustomerName
FROM Customers 
WHERE Country = 'France';

SELECT SupplierName 
FROM Suppliers 
WHERE Country = 'Japan';