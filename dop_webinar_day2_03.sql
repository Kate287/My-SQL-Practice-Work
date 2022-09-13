select data_doc as "Дата транзакції",
       debacc as "Дебетовий рахунок",
       amountuah as "Сума, грн",
       txt as "Призначення платежу"
from payment
where txt like '%газ%' 
      and currency = 980 
      and to_char(data_doc ,'yyyy') between 2002 and 2015
      and status = '+'
order by amountuah 
fetch first 3 rows only;