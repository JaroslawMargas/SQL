select * from dbo.Produkty_sklep2 as p2
-- switch ANY -> ALL
WHERE p2.KodProduktu2 > any (
		select p.KodProduktu
		from dbo.Produkty as p
		where p.KodProduktu > 3
		)

-- Subquery return (4,5,6)
-- kodProduktu > ANY (4,5,6) --> ANY 5,6,7,8,9
-- kodProduktu > ALL (4,5,6) --> ALL = 7,8,9