-- UPDATE 레코드(row)의 필드(column)들을 수정
UPDATE Customers
SET ContactName = 'Alfred Schmit', City = ''
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers
SET ContactName = 'Maria Schmit', City = 'Frankfurt'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

SELECT * FROM Customers ORDER BY 1 DESC;
UPDATE Customers
SET CustomerName='T-Bug', ContactName = 'Maria Schmit', Address='J123', City = 'NightCity', PostalCode='54651', Country='CyberPunk'
WHERE CustomerID = 92;

UPDATE Customers
SET CustomerName='Dexter', ContactName = 'Dex', Address='H123', City = 'NightCity', PostalCode='54855', Country='CyberPunk'
WHERE CustomerID = 93;

-- 여러행 한번에 수정
UPDATE Customers
SET PostalCode = 00000
WHERE Country = 'Mexico';

SELECT * FROM Customers WHERE Country='Mexico';

DESC Customers;

-- safe UPDATE mode -> disable
SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET City = 'New York'
WHERE Country = 'USA';
SELECT * FROM Customers WHERE Country='USA';

UPDATE Customers
SET City = 'GangNam'
WHERE Country = 'UK';
SELECT * FROM Customers WHERE Country='UK';

UPDATE Customers
SET City='Seoul'; 
-- where 절 안빼먹게 조심
-- UPDATE실행 전에 같은 where 절로 select 해보기
SELECT * FROM Employees;

UPDATE Customers
SET CustomerName=?,ContactName=?,Address=?,City=?,Country=?
WHERE CustomerId=? ;

SELECT * FROM Customers