select debacc
from payment
where txt like '%алког%';


select cust_id
from account
where account = 260027466;


select surname || ' ' || name || ' ' || middlename as nameuser
from customer
where cust_id = 16;
