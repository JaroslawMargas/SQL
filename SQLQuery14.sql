select TOP (2) WITH TIES * from dbo.Produkty_sklep2 as p2
WHERE CenaJedn2 <= 7
ORDER BY CenaJedn2

-- TOP 2 will display 2 rows with price < 7 
-- ORDER BY price
-- WITH TIES specifies that additional rows be returned from the base result set with the same value = 7