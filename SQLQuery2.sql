-- Normalizacja bazy danych
-- Nadmiarowoœæ, anomalie modyfikacji, dodawania / usuwania rekordów
-- v.1.0 SQLpedia.pl Jakub Kasprzak 2013-01-15

Insert into Klienci (NazwaKlienta,Adres,KodPocztowy,Miasto,Wojewodztwo)
  Values  ('Jan Kowalski','ul. Jana Paw³a 12','61-600','Poznañ','Wielkopolskie'),
('Anna Dymna','ul. Staszica 1','30-600','Kraków','Ma³opolskie'),
('Piotr Wawrzyniak','al. Niepodleg³oœci 1','30-600','Kraków','Ma³opolskie'),
('Jan Kowalski','ul. Poznañska 8','21-120','Wroc³aw','Dolnoœl¹skie'),
('Krzys Niezamawialski','ul. Robotnicza 3','11-522','Warszawa','Mazowieckie')

Insert into Zamowienia (NumerZamowienia,IDKlient,DataZamowienia, WartZamNetto ,WartZamBrutto )
Values  (101,1,'2012-01-02',1200, 1476.00 ),
(102,2,'2012-03-22',2200, 2706.00),
(103,3,'2012-03-22',2200, 2706.00),
(104,1,'2012-10-22',80, 98.40),
(105,4,'2012-05-22',15,18.45)

Insert into DetaleZamowien ( NumerZamowienia, KodProduktu ,CenaJedn ,Ilosc)
VALUES (101 , 1, 300 , 4),
(102 , 2, 550 , 4),
(103 , 2, 550 , 4),
(104 , 3, 80 , 1),
(105 , 4, 10 , 1),
(106 , 5, 5, 1)

Insert into Produkty (Nazwa,Producent,CenaJedn)
Values ('Opony 205 R16','Pirelli',300),
('Alufelgi Silver','ENZO',550),
('Opony wymiana',NULL,80),
('P³yn do spryskiwacza','GreenApple',10),
('Trójk¹t ostrzegawczy','GoSafer',5),
('Choika pachnaca','Wunder Baum',7)
