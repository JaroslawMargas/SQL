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


