INSERT INTO Employee (employeeId, managerId, branchId, firstname, lastname) VALUES (4, 2, 1, "borat", "amami");

INSERT INTO [table_name] ([column_name], [column_name], ...) VALUES ([column_value], [column_value], ...);


SELECT [column_name or the_all_symbol_*], [column_name], ... FROM [table_name] WHERE [search_condition];


SELECT * FROM Employee;
SELECT employeeId, firstname, lastname FROM Employee;
SELECT employeeId, firstname, lastname FROM Employee WHERE emplyeeId=1;
SELECT employeeId, firstname, lastname FROM Employee WHERE firstname="navid";
SELECT employeeId, firstname, lastname FROM Employee WHERE firstname!="navid";
SELECT employeeId, firstname, lastname FROM Employee WHERE firstname="navid" AND firstname="Humra";
SELECT employeeId, firstname, lastname FROM Employee WHERE firstname="navid" OR firstname="Humra";
SELECT employeeId, firstname, lastname FROM Employee WHERE lastname LIKE '%i%';
SELECT employeeId, firstname, lastname FROM Employee WHERE managerId IN (SELECT managerId FROM Manager WHERE firstname LIKE '%a%');
SELECT employeeId, firstname, lastname FROM Employee WHERE managerId IN (SELECT managerId FROM Manager WHERE firstname NOT LIKE '%a%');





`TABLE_NAME`='Employee';
+-------------+
| COLUMN_NAME |
+-------------+
| employeeId  |
| managerId   |
| branchId    |
| firstname   |
| lastname    |


INSERT INTO Manager (managerId, branchId, firstname, lastname) VALUES 
(2, 1, "posy", "stevenson"),
(3, 1, "steve", "martin");

SELECT `COLUMN_NAME`  FROM `INFORMATION_SCHEMA`.`COLUMNS`  WHERE `TABLE_SCHEMA`='company';      AND `TABLE_NAME`='Manager';





INSERT INTO Members (full_names, gender, date_of_birth, physical_address, postal_address, contact_number, email) 
VALUES ('Janet Jones', 'female', STR_TO_DATE('21-07-1980', '%d-%m-%Y'), 'First Street Plot No 4', 'mk41 5dy', 0759253542, 
'janetjones@yagoo.cm');



INSERT INTO movies (title, director, year_released, category_id) 
VALUES ('Pirates of the Caribean 4', 'Rob Marshall', 2011, 1);

INSERT INTO movies (title, director, year_released, category_id) 
VALUES ('X-Men', NULL, 2008, NULL),
('Code Name Black', 'Edgar Jimz', 2010, NULL),
("Daddy's Little Girls", NULL, 2007, 8 ),
('Angels and Demons', NULL, 2007, 6),
('Davinci Code', NULL, 2007, 6),
('Honey mooners', 'John Schultz', 2005, 8),
('67% Guilty', NULL, 2012, NULL);


SELECT * FROM `Members` WHERE `membership_number` = 1;

UPDATE `Members` SET `contact_number` = '0759 253 542' WHERE `membership_number` = 1;

UPDATE `Members` SET `full_names` = 'Robert Goodman Jr', `physical_address` = 'Melrose 124' WHERE `membership_number` = 2;

SELECT `gender`,COUNT(`membership_number`)  FROM `Members` GROUP BY `gender`;

SELECT * FROM `movies` GROUP BY `movie_id`,`category_id`,`year_released` HAVING `category_id` = 8;



INSERT INTO categories (category_name, remarks) 
VALUES ('Comedy', 'Movies with humour'),
('Romantic', 'Love stories'),
('Epic', 'Story ancient movies'),
('Horror', NULL),
('Science Fiction', NULL),
('Thriller', NULL),
('Action', NULL),
('Romantic Comedy', NULL);


SELECT `membership_number`,`fullname` FROM `members`
UNION
SELECT `movie_id`,`title` FROM `movies`;

CREATE VIEW `accounts_v_members` AS SELECT `membership_number`,`fullname`,`gender` FROM `members`;