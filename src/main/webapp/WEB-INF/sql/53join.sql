CREATE DATABASE mydb5;
USE mydb5;

CREATE TABLE Categories
AS
SELECT CategoryID, CategoryName
FROM w3schools.Categories;

CREATE TABLE Products
AS
SELECT ProductID, ProductNAme, CategoryID
FROM w3schools.Products;

SELECT * FROM Products;
SELECT * FROM Categories;

-- chais 상품이 어떤 카테고리명을 가지고 있는가
SELECT * FROM Products WHERE ProductName = 'Chais';
SELECT * FROM Categories WHERE CategoryId = 1;

SELECT * FROM Categories WHERE CategoryID = (SELECT CategoryID
												FROM Products
												WHERE ProductName='Chais');
-- JOIN : 두개이상의 테이블을 연결해서 조회할 수 있다
-- CARTESIAN PRODUCT
-- 결과행 = Arow X Brow
-- 결과열 = Acol + Bcol

DESC Products;   -- 3cols
SELECT COUNT(*) FROM Products; -- 77rows

DESC Categories;   -- 2cols
SELECT COUNT(*) FROM Categories; -- 8rows

-- 결과 행의 수 = 77*8
-- 결과 열의 수 = 3+2
SELECT * FROM Products JOIN Categories;
SELECT COUNT(*) FROM Products JOIN Categories; -- 행 616 열 5

SELECT * FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID;

SELECT * FROM Products JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Products.ProductName = 'Chais';

SELECT * FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
AND Products.ProductName = 'Chais';

SELECT CategoryName FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
AND Products.ProductName = 'Ikura';

SELECT ProductName FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
AND Categories.CategoryName = 'Seafood';

SELECT * FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
AND Categories.CategoryName = 'Seafood';

-- ALIAS : 테이블명, 컬럼명에 별칭
-- as 생략 가능
SELECT c.CategoryID, p.ProductName 
FROM Products p JOIN Categories c
WHERE p.CategoryID = c.CategoryID
AND c.CategoryName = 'Seafood';

