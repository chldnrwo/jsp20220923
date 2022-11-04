USE w3schools;
CREATE TABLE Salary(
	EmployeeID int PRIMARY KEY,
    Salary INT DEFAULT 0
);

SELECT * FROM Salary;
SELECT * FROM Employees;
DELETE FROM Employees WHERE EmployeeID > 9;

INSERT INTO Salary (EmployeeID, Salary)
VALUES (1, 1000),
	   (2, 2000),
       (3, 2000),
       (4, 1000),
       (5, 1500),
       (6, 2000),
       (7, 3000),
       (8, 4000),
       (9, 5000);
      
INSERT INTO Employees (FirstName, LastName)
VALUES ('son', 'hm');

INSERT INTO Salary (EmployeeID, Salary)
VALUES (14, 2000);

