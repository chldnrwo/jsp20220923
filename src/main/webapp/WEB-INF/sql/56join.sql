SELECT * FROM Orders WHERE OrderDate = '1996-07-04';

SELECT * 
FROM OrderDetails 
WHERE OrderID = 10248;

SELECT * 
FROM Products
WHERE ProductID IN (11,42,72);

SELECT p.ProductName
FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
					 JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

SELECT SUM(od.Quantity * p.Price)
FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
					 JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

SELECT o.OrderDate, SUM(od.Quantity * p.Price)
FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
					 JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;


SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;
SELECT * FROM Customers;
-- 고객별 주문 총 금액 조회
SELECT c.CustomerID, 
	   c.CustomerName,
       SUM(od.Quantity * p.Price) Total
FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID 
					 JOIN Customers c on c.CustomerID = o.CustomerID 
					 JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.CustomerID
HAVING Total >= 10000
ORDER BY c.CustomerID;

-- 고객별 주문 총 금액 조회
SELECT c.CustomerID, 
       c.CustomerName, 
       SUM(d.Quantity * p.Price) Total
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
			     JOIN OrderDetails d ON o.OrderID = d.OrderID
                 JOIN Products p ON d.ProductID = p.ProductID
GROUP BY c.CustomerID 
HAVING Total >= 10000
ORDER BY c.CustomerID;
                 