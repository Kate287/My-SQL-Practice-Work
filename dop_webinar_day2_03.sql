select data_doc as "���� ����������",
       debacc as "��������� �������",
       amountuah as "����, ���",
       txt as "����������� �������"
from payment
where txt like '%���%' 
      and currency = 980 
      and to_char(data_doc ,'yyyy') between 2002 and 2015
      and status = '+'
order by amountuah 
fetch first 3 rows only;