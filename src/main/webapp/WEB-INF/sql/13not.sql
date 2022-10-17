SELECT * FROM Customers WHERE NOT Country = 'USA';

SELECT * FROM Suppliers WHERE NOT Country = 'USA';

SELECT * FROM Orders WHERE NOT (OrderDate >= '1997-01-01' AND OrderDate <= '1997-12-31');

