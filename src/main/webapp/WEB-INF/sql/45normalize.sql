-- 한 컬럼이 다른 컴럼에 종속되어 있을 때 테이블을
-- 만들어라
USE w3schools;
SELECT * FROM Products;
-- 상품명, unit, 가격, 카테고리명, 카테고리 설명
CREATE TABLE MyProducts(
	productName VARCHAR(255),
    unit VARCHAR(255),
    price DECIMAL(10,2),
    categoryName VARCHAR(255),
    description VARCHAR(255)
);
DROP TABLE MyProducts;
CREATE TABLE MyProducts AS
SELECT p.ProductName, 
 p.Unit, 
 p.Price, 
 c.CategoryName,
 c.Description
FROM Products p INNER JOIN Categories c 
ON p.CategoryId = c.CategoryId;

SELECT * FROM MyProducts ORDER BY 4;
SELECT * FROM Products;
SELECT * FROM Categories;

SELECT * FROM Orders;
-- 주문번호, 주문일, 고객명, 고객주소
SELECT * FROM Customers;

-- Products 테이블 정규화 전
-- 상품명, 유닛, 가격, 카테고리명, 카테고리 설명, 공급자명, 공급자 주소