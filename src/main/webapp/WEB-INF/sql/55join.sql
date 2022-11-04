SELECT * FROM Customers c JOIN Orders o
						  JOIN Employees e;
-- 총 rows : cRow * oRow * eRow
-- 총 cols : cCol + oCol + eCOl

SELECT COUNT(*) FROM Customers c JOIN Orders o
						  JOIN Employees e;
                          
DESC Customers; -- 7cols
DESC Orders; -- 5
DESC Employees; -- 6

SELECT c.CustomerName, e.FirstName, e.LastName 
FROM Customers c JOIN Orders o ON o.CustomerID = c.CustomerID
				 JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

SELECT * FROM Orders;

SELECT c.CustomerName, s.ShipperName, e.FirstName, e.LastName 
FROM Orders o JOIN Shippers s ON o.ShipperID = s.ShipperID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04'

