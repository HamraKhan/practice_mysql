CREATE DATABASE shopping;

CREATE TABLE IF NOT EXISTS `shopping` . `customer` (
`customer_id` INT NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR (255),
`last_name` VARCHAR (255),
`address` VARCHAR (255),
PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `shopping` . `order` (
`order_id` INT NOT NULL AUTO_INCREMENT,
`customer_id` BIGINT,
`card_id` BIGINT,
PRIMARY KEY (`order_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `shopping` . `card` (
`card_id` INT NOT NULL AUTO_INCREMENT,
`card_number` VARCHAR (255),
`cardholder_name` VARCHAR (255),
`expiry_date` DATE,
PRIMARY KEY (`card_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `shopping` . `address` (
`address_id` INT NOT NULL AUTO_INCREMENT,
`customer_id` BIGINT,
PRIMARY KEY (`address_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `shopping` . `customer_address` (
`customeraddress_id` INT NOT NULL AUTO_INCREMENT,
`customer_id` BIGINT,
`address_id` BIGINT,
PRIMARY KEY (`customeraddress_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `shopping` . `order_item` (
`orderitem_id` INT NOT NULL AUTO_INCREMENT,
`order_id` BIGINT,
`item_id` BIGINT,
PRIMARY KEY (`orderitem_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `shopping` . `item` (
`item_id` INT NOT NULL AUTO_INCREMENT,
`item_name` VARCHAR (255) ,
`price` DECIMAL (10,2),
PRIMARY KEY (`item_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `shopping` . `shipping` (
`shipping_id` INT NOT NULL AUTO_INCREMENT,
`customeraddress_id` BIGINT,
`order_id` BIGINT,
PRIMARY KEY (`shipping_id`))
ENGINE = InnoDB;


DROP TABLE `customer`;   
DROP TABLE `order`;     
DROP TABLE `card`;      
DROP TABLE `address`;   
DROP TABLE `customer_address`;
DROP TABLE `order_item`;
DROP TABLE `item`;     
DROP TABLE `shipping`;

INSERT INTO `customer` (first_name, last_name, address) VALUES
("Nancy", "Milligan", "49 Liverpool Street"),
("Robert", "Whitemore", "3 Tremon Lane"),
("Mitesh", "Devon", "No.127 Court House"),
("Clara", "Loraine", "43A Dennison House"),
("Jamal", "Laman", "87 Renford Road"),
("Jennifer", "Roland", "16 High Street"),
("Priya", "Amesh", "Flat 189 West Summerset");

INSERT INTO `item` (item_name, price) VALUES
("Activewear men's sports t-shirt", 14.99),
("Activewear men's sports shorts", 12.99),
("Activewear women's sports tank", 11.99),
("Activewear women's sports leggings", 25.99),
("Summer dress off shoulder", 19.99),
("Patterned blouse 3/4 sleeve", 24.99),
("Logo t-shirt set x3", 7.99),
("High rise textured jeans", 39.99),
("Skirt", 19.99),
("Hosier striped", 8.99),
("Men's diamond socks set", 8.99),
("Sandal strap heel", 38.99),
("Crocodile strap belt with buckle", 7.99),
("Indigo yoga mat", 26.99),
("Phone stand", 7.99),
("Disney Phone cover", 12.99),
("Leather backpack", 49.99);

INSERT INTO card (card_number, cardholder_name, expiry_date) VALUES
(1111222233334444, "Mr R Whitemore", STR_TO_DATE('31-12-2023', '%d-%m-%Y')),
(1111222233334444, "Mr M Devon", STR_TO_DATE('31-12-2023', '%d-%m-%Y')),
(1111222233334444, "Miss C Loraine", STR_TO_DATE('31-12-2023', '%d-%m-%Y')),
(1111222233334444, "Mr J Laman", STR_TO_DATE('31-12-2023', '%d-%m-%Y')),
(1111222233334444, "Ms J Roland", STR_TO_DATE('31-12-2023', '%d-%m-%Y')),
(1111222233334444, "Miss P Amesh", STR_TO_DATE('31-12-2023', '%d-%m-%Y'));
 



