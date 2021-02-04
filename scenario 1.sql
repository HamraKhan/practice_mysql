DROP DATABASE conference;
CREATE DATABASE conference;
use conference;

CREATE TABLE IF NOT EXISTS `conference` . `bookings` (
	`booking_id` INT NOT NULL AUTO_INCREMENT,
	`time` TIME,
	`room_id` BIGINT (20),
	`staff_id` BIGINT,
	`event_id` BIGINT,
	PRIMARY KEY (`booking_id`))
	ENGINE = InnoDB; 

CREATE TABLE IF NOT EXISTS `conference` . `staff` (
	`staff_id` INT NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR (255),
	`last_name` VARCHAR (255),
	PRIMARY KEY (`staff_id`))
	ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `conference` . `events` (
	`event_id` INT NOT NULL AUTO_INCREMENT,
	`name_of_event` VARCHAR (255),
	PRIMARY KEY (`event_id`))
	ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `conference` . `rooms` (
    `room_id` INT NOT NULL AUTO_INCREMENT,
    `room_number` INT,
    PRIMARY KEY (`room_id`))
    ENGINE = InnoDB;


INSERT INTO staff (first_name, last_name) VALUES 
	("Pablo", "Picasso"),
	("Henri", "Matisse"),
	("William", "Waterhouse"),
	("Claude", "Monet"),
	("Shaun", "Tan"),
	("Georgia", "Okeefe"),
	("Navid", "Amami");


INSERT INTO events (name_of_event) VALUES 
	("Cubism: How I discovered it"),
	("The Significance of colour"),
	("Women: My main subject matter"),
	("The beauty of the world around us"),
	("Travels of an immigrant"),
	("Flowers, flowers, flowers"),
	("My endless love for coding");



INSERT INTO bookings (time, room_id, staff_id, event_id) VALUES 
	('10:15:00', 4, 1, 1),
	('15:00:00', 9, 2, 2),
	('12:00:00', 2, 3, 3),
	('17:30:00', 20, 4, 4),
	('18:45:00', 11, 5, 5),
	('14:30:00', 13, 6, 6),
	('08:30:00', 1, 7, 7);

INSERT INTO rooms (room_number) VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22);

