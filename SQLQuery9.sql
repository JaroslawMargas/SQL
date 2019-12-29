select p.Nazwa,p.Producent,p.CenaJedn from dbo.Produkty as p
Intersect
select p2.Nazwa2, p2.Producent2, p2.CenaJedn2 from dbo.Produkty_sklep2 as p2

--('Opony 205 R16','Pirelli',300),
--('Alufelgi Silver','ENZO',550),
--('Opony wymiana',NULL,80),
--('P³yn do spryskiwacza','GreenApple',10),
--('Trójk¹t ostrzegawczy','GoSafer',5),
--('Choika pachnaca','Wunder Baum',7)

--('Opony 205 R16','Pirelli',300),
--('Alufelgi Silver','Borbet',369),
--('Alufelgi Silver','ENZO',540),
--('Opony wymiana',NULL,80),
--('Olej silnikowy','Castrol',124),
--('P³yn do spryskiwacza zima','Ice',11),
--('Klocki Hamulcowe','Kamoka',58.20),
--('Trójk¹t ostrzegawczy','GoSafer',5),
--('Choika pachnaca','Wunder Baum',7)