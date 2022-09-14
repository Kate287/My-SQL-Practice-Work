select *
from payment
where data_doc >= to_date ('01.01.2019', 'dd.mm.yyyy')
order by amountuah desc
fetch first 10 rows only;
