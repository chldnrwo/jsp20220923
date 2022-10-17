-- 보다 크다 : >
SELECT * FROM Customers WHERE CustomerID > 89;
SELECT * FROM Employees WHERE EmployeeID > 5;
SELECT * FROM Employees WHERE LastName > 'Callahan';
SELECT * FROM Employees WHERE BirthDate > '1959-12-31';

-- Products 테이블에서 가격이 10.00보다 큰 상품들 조회
SELECT * FROM Products WHERE Price > 10.00;
-- Orders테이블에서 1998년이후에 주문한 OrderId를 조회
SELECT OrderID FROM Orders WHERE OrderDate > '1997-12-31';