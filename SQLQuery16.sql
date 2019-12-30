SELECT Substring(Adres, PatIndex('%["."]%',[Adres])+2, LEN(adres)-PatIndex('%[.]%',[Adres]))
  FROM [database_name].[dbo].[Klienci]

-- Patindex - find dote with PatIndex function
-- cut ul. or al. from adress string with Substring function