select p2.Nazwa2 as 'Nazwa towaru', count(p2.Producent2) as 'Liczba producentow'
from dbo.Produkty_sklep2 as p2
where p2.CenaJedn2 >= 5
group by p2.Nazwa2
having count(p2.Producent2) > 0
order by count(p2.Producent2)

-- FROM take data from Producty on sklep 2 table
-- WHERE  price > 5
-- GROUP BY column by Nazwa (alufelgi silver have two Producents)
-- group HAVING Producent more then 0 because "wymiana opon" is null
-- SELECT Nazwa - for the grouped data we select directly 
-- SELECT count(Producent) - for (raw data) we can use only aggregate functions !!