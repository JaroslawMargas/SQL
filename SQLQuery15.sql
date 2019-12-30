select 
LEFT(k.NazwaKlienta,1) +
'.' 
+ Substring(k.NazwaKlienta, CHARINDEX(' ',k.NazwaKlienta), LEN(k.NazwaKlienta)-CHARINDEX(' ',k.NazwaKlienta)+1)
from dbo.Klienci as k

-- find space index in Name_Surname
-- CHARINDEX(' ',k.NazwaKlienta)
-- How many char for Surname:
-- LEN(string) - space poz + 1
-- LEN(k.NazwaKlienta)-CHARINDEX(' ',k.NazwaKlienta)+1
-- summary:
-- SUBSTRING(string, from space index, char for Surname)
-- example: J.Kowalski