select data_doc,
       txt,
       debacc,
       decode(currency, '980', 'Гривня', '978', 'Євро', '840', 'Долар США') as currency,
       amount as amount_full,
       amount * 0.18 as income_tax,
       amount * 0.015 as war_choir,
       amount - ((amount * 0.18) + (amount * 0.015)) as amount_no_tax
from payment;

