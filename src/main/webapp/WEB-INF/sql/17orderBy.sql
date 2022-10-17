-- ORDER BY : 조회된 레코드(행, row) 정렬ALTER
SELECT * FROM Customers;
SELECT * FROM Customers ORDER BY CustomerID;
SELECT * FROM Customers ORDER BY Country;
SELECT * FROM Customers ORDER BY Country,City;

-- ASC 오름 차순
-- DESC 내림차순
SELECT * FROM Customers ORDER BY Country ASC;
SELECT * FROM Customers ORDER BY Country DESC;
SELECT * FROM Customers ORDER BY Country ASC,City ASC;
SELECT * FROM Customers ORDER BY Country DESC,City ASC;
SELECT * FROM Customers ORDER BY Country DESC,City DESC;

-- 컬럼명 대신 컬럼 번호로 작성 가능
SELECT * FROM Customers ORDER BY CustomerName;
SELECT * FROM Customers ORDER BY 2;

SELECT CustomerName, City FROM Customers;
SELECT CustomerName, City FROM Customers ORDER BY CustomerName;
SELECT CustomerName, City FROM Customers ORDER BY 1;
SELECT CustomerName, City FROM Customers ORDER BY 1 ASC;
SELECT CustomerName, City FROM Customers ORDER BY 2,1;

SELECT * FROM Employees ORDER BY BirthDate;
SELECT * FROM Products ORDER BY ProductName;
SELECT ProductName, Price FROM Products ORDER BY Price DESC;
SELECT * FROM Suppliers ORDER BY Country,City;