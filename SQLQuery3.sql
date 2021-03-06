SELECT z.NumerZamowienia,
	cast(z.DataZamowienia as date) AS "Data Zamowienia",
	p.Nazwa,
	d.CenaJedn,
	d.Ilosc,
	(d.CenaJedn*d.Ilosc) as "Wartosc Zamowienia",
	k.NazwaKlienta

from 
dbo.Zamowienia as z
	Inner Join dbo.DetaleZamowien as d
	ON z.NumerZamowienia  = d.NumerZamowienia
		Inner Join dbo.Klienci as k
		ON k.IDKlient = z.IDKlient
			Inner Join dbo.Produkty as p
			On d.KodProduktu = p.KodProduktu
WHERE k.NazwaKlienta Like 'Anna%'

