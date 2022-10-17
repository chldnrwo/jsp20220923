-- not equals : <>, != 같지 않다
SELECT * FROM Customers WHERE Country <> 'Mexico'; -- 86
SELECT * FROM Customers WHERE Country <> 'Germany'; -- 80
SELECT * FROM Customers WHERE Country != 'Mexico'; -- 86
SELECT * FROM Customers WHERE Country != 'Germany'; -- 80

-- Suppliers 테이블에서 국가가 Japan이 아닌 공급자들 조회
SELECT * FROM Suppliers WHERE Country <> 'Japan';
SELECT count(*) FROM Suppliers;
SELECT count(*) FROM Suppliers WHERE Country <> 'japan';
SELECT count(*) FROM Suppliers WHERE Country <> 'JAPAN';

SELECT * FROM Employees;