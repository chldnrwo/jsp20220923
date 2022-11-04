USE mydb6;
SELECT * FROM TableA;
SELECT * FROM TableB;

SELECT * FROM TableA
UNION ALL
SELECT * FROM TableB;

-- full outer join
SELECT * FROM TableA a LEFT JOIN TableB b ON a.col1=b.c1
UNION
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.col1=b.c1;