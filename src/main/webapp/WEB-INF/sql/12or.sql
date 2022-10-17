USE w3schools;
-- or : 두 조건중 하나만 true면 선택됨
SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country = 'Mexico';

SELECT * FROM Customers WHERE Country = 'Germany' or Country= 'Mexico';

-- usa와 uk 고객조회
SELECT * FROM Customers WHERE Country = 'USA' or Country= 'UK';

SELECT * FROM Customers WHERE City = 'London' or City= 'Berlin';

SELECT * FROM Suppliers WHERE Country = 'USA' or Country= 'UK';

SELECT * FROM Products WHERE CategoryID  00 = '1' or CategoryID= '2';