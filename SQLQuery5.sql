SELECT *
from dbo.Produkty as p FULL outer Join dbo.DetaleZamowien as z 
	ON p.KodProduktu = z.KodProduktu
	Where p.KodProduktu is null or z.KodProduktu is null