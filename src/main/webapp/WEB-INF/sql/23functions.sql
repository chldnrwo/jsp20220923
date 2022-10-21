USE w3schools;

-- MIN 가장 작은 값
SELECT * FROM Products;
SELECT * FROM Products ORDER BY Price DESC;
SELECT MIN(Price) FROM Products;

SELECT MAX(Price) FROM Products;

SELECT MIN(CustomerName) FROM Customers;
SELECT MAX(CustomerName) FROM Customers;

SELECT * FROM Customers ORDER BY CustomerName DESC;

SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

-- COUNT : 몇개의 데이터가 있는지 리턴
SELECT * FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers;
SELECT COUNT(ContactName) FROM Customers;
-- null은 세지 않는다
INSERT INTO Customers(ContactName, City, Country)
VALUES ('Captain', 'ny', 'USA');

-- Product 100.00 가ㅣ 넘는 상품의 수
SELECT COUNT(*) FROM Products WHERE Price > 100.00;

SELECT COUNT(*) FROM Employees WHERE BirthDate>='1960-01-01' && BirthDate<='1969-12-31';

-- AVG 평균
SELECT * FROM Products;
SELECT AVG(Price) FROM Products;
-- NULL인 데이터 무시 
INSERT INTO Products(ProductName)
VALUES ('Kimchi');

SELECT * FROM OrderDetails;

SELECT AVG(Quantity) FROM OrderDetails;

SELECT * FROM OrderDetails;
SELECT SUM(Price)FROM Products;

SELECT SUM(Quantity) FROM OrderDetails;


