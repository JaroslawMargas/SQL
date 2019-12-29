SELECT k.IDKlient,
	k.NazwaKlienta,
	k.KodPocztowy,
	k.Miasto,
	k.Wojewodztwo,
	'Nie zamowili' as "Status zam"
from dbo.Klienci as k Left outer Join dbo.Zamowienia as z 
	ON k.IDKlient = z.IDKlient
	WHERE z.IDKlient is Null