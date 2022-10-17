-- between: 범위내 조건
SELECT * FROM Orders;
SELECT * FROM Orders WHERE OrderDate >= '1996-08-01' AND OrderDate < '1996-09-01';

-- between은 이상 이하 대상 포함
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-08-01' AND '1996-08-31';

SELECT * FROM Products WHERE Price BETWEEN '10' AND '20';

SELECT * FROM Orders WHERE OrderDate BETWEEN '1998-01-01' AND '1998-01-31';

SELECT * FROM Employees WHERE BirthDate BETWEEN '1950-01-01' AND '1959-12-31';


