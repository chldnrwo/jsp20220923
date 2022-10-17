-- in: 나열된 값 중에 하나라도 일치하면
SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Mexico' OR Country = 'Germany';

SELECT * FROM Customers WHERE Country IN ('Germany','Mexico');
SELECT * FROM Customers WHERE Country IN ('Germany','Mexico','UK');

SELECT * FROM Customers WHERE City IN ('Madrid','London','München');

SELECT * FROM Suppliers WHERE Country IN ('Japan','UK','USA');

SELECT * FROM Products WHERE CategoryID IN ('1','2','3');

SELECT * FROM Orders WHERE OrderDate IN ('1996-07-08','1996-07-19');