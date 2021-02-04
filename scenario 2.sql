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
`first_name` VARCHAR (255) ,
`last_name` VARCHAR (255),
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