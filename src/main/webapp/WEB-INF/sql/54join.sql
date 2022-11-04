USE w3schools;
SELECT * FROM Products;
SELECT p.ProductName, s.SupplierName FROM Products p JOIN Suppliers s
on p.SupplierID = s.SupplierID;

SELECT s.city FROM Products p JOIN Suppliers s
on p.SupplierID = s.SupplierID
WHERE ProductName = 'Tofu';

SELECT p.ProductName FROM Products p JOIN Suppliers s
on p.SupplierID = s.SupplierID
WHERE SupplierName = 'Mayumi''s';

-- '1996-07-04'날 주문한 고객명 조회 
SELECT * FROM Orders WHERE OrderDate = '1996-07-04';
SELECT * FROM Shippers;
-- '1996-07-04'날 주문을 처리한 직원명 조회
SELECT e.FirstName, e.LastName FROM Orders o JOIN Employees e
on o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';
-- '1996-07-04'날 주문을 배송한 배송자명 조회
SELECT s.ShipperName FROM Orders o JOIN Shippers s
on o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';