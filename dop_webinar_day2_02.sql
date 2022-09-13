select *
from payment
where to_char(data_doc ,'yyyy') = 2019
order by amountuah desc
fetch first 10 rows only;