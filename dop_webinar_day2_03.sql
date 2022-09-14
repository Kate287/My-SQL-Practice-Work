select data_doc as "Date of transaction",
       debacc as "Debit account",
       amountuah as "Sum, UAN",
       txt as "Purpose of payment"
from payment
where txt like '%gas%' 
      and currency = 980 
      and data_doc >= to_date('2002', 'yyyy')
      and data_doc <= to_date('2015', 'yyyy')
      and status = '+'
order by amountuah 
fetch first 3 rows only;
