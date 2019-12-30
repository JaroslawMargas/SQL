SELECT 
count_numer = COUNT(1) OVER (order by k.CenaJedn2 ASC),
row_numer = ROW_NUMBER() OVER (order by k.CenaJedn2 ASC),
dense_numer = DENSE_RANK() OVER (order by k.CenaJedn2 ASC),
rank_numer = RANK() OVER (order by k.CenaJedn2 ASC),
CenaJedn2
FROM database_name.dbo.Produkty_sklep2 as k

-- count - return as SQL engine ex.(5,7,7,11) 5->1, 7->2, 7->3 result: 7 is 3 for each then 1,3,3,4
-- row - (5,7,7,11) return row number 1,2,3,4
-- rank - ranking value ex.(5,7,7,11) give 1th, 2nd, 2nd, 4th
-- dense rank - is a continuous function ex.(5,7,7,11) 1th, 2nd ex aequo, 2nd ex aequo, 3th