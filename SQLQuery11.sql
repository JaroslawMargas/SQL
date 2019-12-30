select * from dbo.Produkty_sklep2
ORDER BY (SELECT NULL) OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY;

-- display from 1 to (1+5) rows
-- OFFSET , ROWS FETCH NEXT requires an ORDER BY clause syntactically.
-- You cannot use it without one.
-- SELECT NULL is a hack to shut up the error while not enforcing any particular order