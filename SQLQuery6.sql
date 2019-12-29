-- v.1.0 SQLpedia.pl Jakub Kasprzak 2013-01-15
CREATE TABLE Produkty_sklep2(
	KodProduktu2 int Identity(1,1),
	Nazwa2 varchar(100),
	Producent2 varchar(100),
	CenaJedn2 money 
    CONSTRAINT PK_Produkty2 PRIMARY KEY (KodProduktu2 )
	);
	