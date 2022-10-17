-- INSERT INTO : 테이블에 레코드 추가하는 명령문
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(10, 'SON', 'HM', '1999-01-01', 'EmpID10.pic', 'soccer player');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(11, 'KIM', 'MJ', '1997-07-07', 'EmpID11.pic', 'soccer player');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES
(12, 'Black', 'Panther', '1970-07-07', 'EmpID12.pic');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, Photo)
VALUES
(13, 'Captain', 'America', 'EmpID13.pic');

INSERT INTO Employees
(LastName, FirstName)
VALUES
('Natasha','Romanoff');

INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('Kim','kildong',' ');

SELECT * FROM Employees;
-- Null은 값이 없음

SELECT * FROM Customers ORDER BY 1 DESC;
INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('92','Richard Dokins','Ri do','A,99','New york','1234','USA');

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('93','ma win','mw','B,99','Beizing','1234','China');

DESC Customers; -- DESCRIBE: 테이블 구조 조회, 제약사항 조회 constraints