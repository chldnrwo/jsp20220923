USE w3schools;
SELECT * FROM Customers ORDER BY CustomerID DESC;
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('son','hm','seoul','gangnam','11111','korea');

SELECT MAX(CustomerID) FROM Customers;
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT MAX(CustomerID) FROM Employees;
DESC Employees;