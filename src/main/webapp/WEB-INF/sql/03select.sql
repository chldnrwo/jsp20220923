-- SELECT : 데티어를 얻는 명령문
/*
SELECT 컬럼명리스트 FROM 테이블명;
*/ 

-- customers 테이블의 모든 레코드와 모든 컬럼 조회
SELECT * FROM Customers;
-- customers 테이블의 모든 레코드를 CustomerName 열 조회
SELECT CustomerName FROM Customers;
-- customers 테이블의 모든 레코드를 CustomerName,Address 열 조회
SELECT CustomerName, Address FROM Customers;

SELECT LastName, BirthDate FROM Employees;

-- sql 작성 시 주의할 점
-- 대소문자를 구별하지 않는다.
-- 테이블 이름은 구분한다
-- 키워드는 대문자
-- 그 외는 소문자 or CamelCase
SELECT LastName, BirthDate FROM Employees;
select LastName, BirthDate from Employees;
select lastname, birthdate from employees;

-- 모든 컬럼 : *
SELECT * FROM Customers;
SELECT 
	CustomerID, 
    CustomerName, 
    ContactName, 
    Address, 
    City, 
    PostalCode, 
    Country 
FROM 
	Customers;
    
SELECT * FROM Employees;
-- SELECT이후의 컬럼의 순서가 결과의 순서가 됨
SELECT CustomerName, Address FROM Customers;
SELECT Address, CustomerName FROM Customers;

-- Employees 테이블의 모든 레코드를 FirstName, LastName, BirthDate 컬럼으로 조회
SELECT
	FirstName, LastName, BirthDate
FROM
	Employees;