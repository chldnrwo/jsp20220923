-- DROP COLUMN : 컬럼 삭제
-- 삭제 전 백업 꼭하기
DESC MyTable17;
ALTER TABLE MyTable17
DROP COLUMN col7;

-- col5 삭제
ALTER TABLE MyTable17
DROP COLUMN col5;
