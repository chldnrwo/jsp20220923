-- ALIAS : 컬럼/테이블에 별칭을 줄 수 있다.
-- as

SELECT CustomerID, CustomerName FROM Customers;
SELECT CustomerID AS id, CustomerName AS name FROM Customers;

SELECT CustomerID AS id,
	ifnull(CustomerName, 'Anonymous') AS name
    FROM Customers;
    
SELECT EmployeeID AS id,
	FirstName as fname,
    LastName as lname,
    IFNULL(BirthDate, '1995-04-22') as birth
    FROM Employees;
    
    -- as키워드 생략가능
SELECT ProductID,
		ProductName,
        SupplierID,
        CategoryID,
        Unit,
IFNULL(Price, '0.00') Price 
FROM Products;    
    
    