-- v.1.0 SQLpedia.pl Jakub Kasprzak 2013-01-15

CREATE TABLE Klienci(
	IDKlient int IDENTITY(1,1),
	NazwaKlienta nvarchar(100),
	Adres nvarchar(100),
	KodPocztowy char(7),
	Miasto varchar(100),
	Wojewodztwo varchar(100)	
    CONSTRAINT PK_Klienci PRIMARY KEY (IDKlient)
);


CREATE TABLE Zamowienia(
	NumerZamowienia  int,
	IDKlient int,
	DataZamowienia smalldatetime,
	WartZamNetto money,
	WartZamBrutto money
    CONSTRAINT PK_Zamowienia PRIMARY KEY (NumerZamowienia)
);

CREATE TABLE DetaleZamowien(
  	NumerZamowienia int,
	KodProduktu int,
	CenaJedn money,
	Ilosc int
    CONSTRAINT PK_DetaleZamowien PRIMARY KEY (NumerZamowienia )
);

CREATE TABLE Produkty(
	KodProduktu int Identity(1,1),
	Nazwa varchar(100),
	Producent varchar(100),
	CenaJedn money 
    CONSTRAINT PK_Produkty PRIMARY KEY (KodProduktu )
	);
	