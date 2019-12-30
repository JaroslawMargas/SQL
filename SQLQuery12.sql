select * from dbo.Produkty_sklep2 as p2
--WHERE p2.Nazwa2 LIKE 'al%'

--WHERE p2.Nazwa2 LIKE '%uf%'

--WHERE p2.Nazwa2 LIKE '%f_lgi%'

--WHERE p2.Nazwa2 LIKE '[a]%'

--WHERE p2.Nazwa2 LIKE '[a-c]%'

--WHERE p2.Nazwa2 LIKE '[^a-c]%'

--WHERE p2.CenaJedn2 BETWEEN  5 AND 100

--WHERE p2.Nazwa2 IN ('Alufelgi Silver', 'Choika pachnaca')

WHERE p2.CenaJedn2 > ANY (
		select avg(p.CenaJedn)
		from dbo.Produkty as p
		)
