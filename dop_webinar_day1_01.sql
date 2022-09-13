select surname || ' ' || name || ' ' || middlename as full_name,
        to_char(birthday,'Day') as day_of_birthday,
        to_char(birthday,'Month') as mn_name_birthday,
        to_char(birthday,'yyyy') as year_birthday,
        birthday,
        decode(gender, 'M', 'Male', 'F', 'Female') as gender,
        decode(status, 'O', 'Open', 'C', 'Close') as status,
        sysdate as date_of_report
from customer;
