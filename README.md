Installation:
SSMS-Setup-ENU.exe
SQL2019-SSEI-Dev.exe

Failed error:
Login failed for user 'LOCALSERVER\Administrator'. Reason: Server is in single user mode.
Only one administrator can connect at this time. (Microsoft SQL Server, Error: 18461)

- run services.msc in Windows
- Stop all SQL services
- Start with -m
right click on SQL service and then Properties and add -m parametr to SQL Agent
- Run MSSQL Management Studio As administrator
- connect to SQL server

SQLQuery1
- CREATE TABLE

SQLQuery2
- INSERT INTO

SQLQuery3
- Zamowienia INNER JOIN DetaleZamowien INNER JOIN Klienci 
- WHERE LIKE

SQLQuery4
- Klienci LEFT OUTER JOIN Zamowieni
- WHERE IDKlient is Null

SQLQuery5
- Produkty  FULL OUTER JOIN DetaleZamowien
- Where KodProduktu is null or KodProduktu is null

SQLQuery6 
- CREATE TABLE Produkty_sklep2 for test UNION

SQLQuery7
- Insert into Produkty_sklep2 for test UNION

SQLQuery8
- Produkty UNION ALL Produkty_sklep2
- source table

SQLQuery9
- Intersect (UNION)
