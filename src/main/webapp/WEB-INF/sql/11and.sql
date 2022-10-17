-- 데이터베이스 선택
USE w3schools;
SELECT * FROM Customers;

SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

SELECT * FROM Customers WHERE CustomerName >= 'A' AND CustomerName < 'B';

SELECT * FROM Customers WHERE CustomerName >= 'C' AND CustomerName < 'D';

SELECT * FROM Customers WHERE ContactName >= 'E' AND ContactName < 'F';

SELECT * FROM Products WHERE Price >= 10 AND Price < 20;

SELECT * FROM Employees WHERE BirthDate >= '1950-01-01' AND BirthDate <= '1959-12-31';