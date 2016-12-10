# Host: localhost  (Version 5.7.16-log)
# Date: 2016-11-29 20:45:12
# Generator: MySQL-Front 5.4  (Build 4.21)
# Internet: http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

-- CUSTOMER TABLE
INSERT INTO customer   (customerID, name, telephoneNr, socialSecurityNr) 
			VALUES  (1, 'Mattias', '0700161801', '9206071111'),
					(2, 'Kristian', '0700161802', '9206071112'),
					(3, 'Yuhao', '0700161803', '9206071113'),
					(4, 'Luyang', '0700161804', '9206071114'),
					(5, 'Tianran', '0700161805', '9206071115'),
					(6, 'Keerthy', '0700161806', '9206071116'),
                   			(7, 'Divyani', '0700161807', '9206071117'),
					(8, 'Abhilash', '0700161808', '9206071118');

-- Resturant
INSERT INTO restaurant  (restaurantID, restaurantName, telephoneNr, city, address, menu, passKey) 
				VALUES  
						(1, '5ish Resturant', '0739885701', 'Karlskrona', 'Minervagatan 1', 'A la Carte', '0001'),
						(2, 'Seafood Resturant', '0739885702', 'Karlskrona', 'Minervagatan 2', 'Buffet lunch', '0002'),
						(3, 'Coffehouse', '0739885703', 'Karlskrona', 'Minervagatan 3', 'Coffe. Tea. Pastry. Salad', '0003') ''),
						(4, 'Leaf Resturant', '0739885704', 'Karlskrona', 'Minervagatan 4', 'Buffet Dinner', '0004'),
						(5, 'Michells Resturant', '0739885705', 'Karlskrona', 'Minervagatan 5', 'A la Carte', '0005'),
						(6, 'Litlle Italy', '0739885706', 'Stockholm', 'Vinstagatan 1', 'A la Carte', '0006'),
						(7, 'Indian Garden', '0739885707', 'Stockholm', 'Vinstagatan 2', 'Buffet lunch', '0007'),
						(8, 'Noodles and stuff', '0739885708', 'Stockholm', 'Vinstagatan 3', 'Buffet Dinner', '0008'),
						(9, 'Pizzeria Rondellen', '0739885709', 'Stockholm', 'Vinstagatan 4', 'A la Carte', '0009'),
						(10, 'Miami Vice', '0739885701', 'Helsingborg', 'Stortorget 1', 'A la Carte', '0010'),
						(11, 'Steak & Burger', '0739885711', 'Helsingborg', 'Stortorget 2', 'Buffet Dinner', '0011'),
						(12, 'Shrimpy Fish', '0739885712', 'Ronneby', 'Havshamnen 1', 'A la Carte', '0012');

-- TABLE
INSERT INTO tables (tableID, nrOfSeats, restaurantID) 
			VALUES 
					(1, 4, 1),
					(2, 1, 1),
					(3, 1, 1),
					(4, 1, 1),
					(5, 1, 1),
					(6, 1, 1),
					(7, 1, 1),
					(8, 1, 1),
					(9, 1, 2),
					(10, 1, 2),
					(11, 1, 3),
					(12, 1, 3),
					(13, 1, 4),
					(14, 1, 4),
					(15, 1, 5),
					(16, 1, 5),
					(17, 1, 6),
					(18, 1, 6),
					(19, 1, 7),
					(20, 1, 7),
					(21, 1, 8),
					(22, 1, 8),
					(23, 1, 9),
					(24, 1, 9),
					(25, 1, 10),
					(26, 1, 10),
					(27, 1, 11),
					(28, 1, 11),
					(29, 1, 12),
					(30, 1, 12);

			
INSERT INTO reservation   (reservationID, restaurantID, tableID, customerID, name, date, startTime, endTime) 
			VALUES 
				(1, 1, 1, 1, 'Mattias', '2016-12-05', '15:00:00', '16:00:00'),
				(2, 1, 1, 2, 'Kristian', '2016-12-05', '16:00:00', '19:00:00'),
				(3, 1, 1, 3, 'Yuhao', '2016-12-05', '19:00:00', '22:00:00'),
				(4, 2, 9, 1, 'Mattias', '2016-12-05', '19:00:00', '22:00:00'),
				(5, 2, 10, 2, 'Kristian', '2016-12-05', '16:00:00', '19:00:00'),
				(6, 3, 11, 1, 'Mattias', '2016-12-05', '19:00:00', '22:00:00'),
				(7, 4, 13, 2, 'Kristian', '2016-12-05', '19:00:00', '22:00:00'),
				(8, 5, 15, 1, 'Mattias', '2016-12-05', '19:00:00', '22:00:00'),
				(9, 6, 17, 2, 'Kristian', '2016-12-05', '19:00:00', '22:00:00'),
				(10, 7, 19, 1, 'Mattias', '2016-12-05', '19:00:00', '22:00:00');

#

#
# Structure for table "c-- när man har en som är autoincrement så måste man definera vilken kolum man skriver till
-- sen har jag förenklat koden

