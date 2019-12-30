select * from dbo.Produkty_sklep2 as p2
--WHERE p2.Nazwa2 LIKE 'al%'

--WHERE p2.Nazwa2 LIKE '%uf%'

--WHERE p2.Nazwa2 LIKE '%f_lgi%'

--WHERE p2.Nazwa2 LIKE '[a]%'

--WHERE p2.Nazwa2 LIKE '[a-c]%'

--WHERE p2.Nazwa2 LIKE '[^a-c]%'

--WHERE p2.CenaJedn2 BETWEEN  5 AND 100

--WHERE p2.Nazwa2 IN ('Alufelgi Silver', 'Choika pachnaca')

-- switch ANY -> ALL
WHERE p2.KodProduktu2 > ANY (
		select p.KodProduktu
		from dbo.Produkty as p
		where p.KodProduktu > 3
		)

-- Subquery return (4,5,6)
-- kodProduktu > ANY (4,5,6) --> ANY 5,6,7,8,9
-- kodProduktu > ALL (4,5,6) --> ALL = 7,8,9