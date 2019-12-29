select p.Nazwa,p.Producent,p.CenaJedn, 'Sklep 1' as Source from dbo.Produkty as p
UNION all
select p2.Nazwa2,p2.Producent2, p2.CenaJedn2, 'Sklep 2' as Source from dbo.Produkty_sklep2 as p2