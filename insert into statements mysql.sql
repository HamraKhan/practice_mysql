

INSERT INTO Members (full_names, gender, date_of_birth, physical_address, postal_address, contact_number, email) 
VALUES ('Janet Jones', 'female', STR_TO_DATE('21-07-1980', '%d-%m-%Y'), 'First Street Plot No 4', 'mk41 5dy', 0759253542, 
'janetjones@yagoo.cm');


INSERT INTO Members (full_names, gender, date_of_birth, physical_address, postal_address, contact_number, email) 
VALUES ('Robert Goodman', 'male', STR_TO_DATE('23-01-1985', '%d-%m-%Y'), 'Melrose 123', 'sw4 4tg', 07387672198, 
'robertgoodman@dmail.cm');


INSERT INTO Members (full_names, gender, date_of_birth, physical_address, postal_address, contact_number, email) 
VALUES ('Dev Patel', 'male', STR_TO_DATE('12-07-1989', '%d-%m-%Y'), '3rd Street 89', 'st9 3pq', 077893651200, 
'd.patel@ymail.cm');

INSERT INTO Members (full_names, gender, date_of_birth, physical_address, postal_address, contact_number, email) 
VALUES ('Xoaiu Zen', 'male', STR_TO_DATE('14-12-1981', '%d-%m-%Y'), '10 Fitzburg Street', 'nk30 6tw', 07882460902, 
'xoaiu.zen@ymail.cm');

mysqldump -u root -v movies -p | mysql -u root -p -D cinema
