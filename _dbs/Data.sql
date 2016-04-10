SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

INSERT INTO Roles(role) VALUES
('Commander'),
('Admiral'),
('Captain');

INSERT INTO Classes(class) VALUES
('Nimitz'),
('Enterprise'),
('Challenger'),
('Discovery'),
('Eisenhower');

INSERT INTO Types(type) VALUES
('Engine Check'),
('Fuel Refill'),
('Hull Check'),
('Ammunition restock'),
('Supply restock');

INSERT INTO Missions(engagement, result, location, d_from, d_to) VALUES
('War on Terror','Succes','Afghan','28-03-2010','15-09-2012'),
('War on Terror','Succes','Afghan','22-07-2013','07-04-2014'),
('War on Terror','Succes','Iraq','19-04-2008','03-07-2011'),
('War on Terror','Succes','Iraq','23-11-2010','19-05-2012');

INSERT INTO Officers(name, role_id, active) VALUES
('Dixie Dunn',3,true),
('Mary Wise',3,true),
('Melba Weber',3,true),
('Roman Saunders',3,true),
('Dallas Grant',3,true),
('Juanita Hamilton',3,true),
('Lowell Brewer',3,true),
('Darrell Alvarez',3,true),
('Johnnie Martin',3,true),
('Jerry Haynes',3,true),
('Nicolas Parker',3,true),
('Greg Briggs',3,true),
('Donald Kim',3,true),
('Carl Watts',3,true),
('Sharon Bradley',3,true),
('Fredrick Edwards',3,false),
('Allen Holloway',3,false),
('Betsy Ruiz',3,false),
('Jerald Cruz',3,false),
('Alma Figueroa',3,false),
('Leticia Adkins',3,false),
('Opal Olson',3,false),
('Jasmine Neal',3,false),
('Kimberly Meyer',3,false),
('Hector Reid',3,false),
('Marcella Price',2,true),
('Elisa Lopez',2,true),
('Janet Anderson',2,true),
('Thelma Beck',2,true),
('Alice Carroll',2,true),
('Emanuel Thompson',1,true),
('Johnny Hawkins',1,true),
('Travis Elliott',1,true);

INSERT INTO Ports(city, co_id) VALUES
('Norfolk',33),
('Oxnard',32),
('Everett',31);

INSERT INTO Fleets(name, operation_waters, co_id, port_id) VALUES
('1st Atlantic Fleet','North Atlantic',26,1),
('2nd Atlantic Fleet','Middle Atlantic',27,1),
('3rd Atlantic Fleet','South Atlantic',28,2),
('1st Pacific Fleet','North Pacific',29,3),
('2nd Pacific Fleet','South Pacific',30,3);

INSERT INTO Fleets_on_Missions(fleet_id, mission_id) VALUES
(2,2),
(1,1),
(2,1),
(1,3),
(3,3),
(1,4);

INSERT INTO Ships(hull_number, name, class_id, comission,crew,fleet_id,co_id) VALUES
(111, 'Nimitz', 1, '28-05-1991',1500, 1, 1),
(222, 'Sunstar', 1, '28-05-1992',1500, 2, 2),
(333, 'Polar', 1, '28-05-1993',1500, 3, 3),
(444, 'Enterprise', 2, '28-05-1992',2000, 4, 4),
(555, 'Interceptor', 2, '28-05-1993',2000, 5, 5),
(666, 'Malevolence', 2, '28-05-1994',2000, 1, 6),
(777, 'Challenger', 3, '28-05-1993',2500, 2, 7),
(888, 'Independence', 3, '28-05-1994',2500, 3, 8),
(999, 'Freedom', 3, '28-05-1995',2500, 4, 9),
(963, 'Discovery', 4, '28-05-1994',1000, 5, 10),
(852, 'Normady', 4, '28-05-1995',1000, 1, 11),
(741, 'Galactica', 4, '28-05-1996',1000, 2, 12),
(789, 'Eisenhower', 5, '28-05-1995',3000, 3, 13),
(456, 'Lincoln', 5, '28-05-1996',3000, 4, 14),
(123, 'Washington', 5, '28-05-1997',3000, 5, 15);

INSERT INTO Servises(type_id, date, ship_id) VALUES
(1,'18-08-2014',5),
(2,'20-07-2014',3),
(1,'10-10-2015',1),
(3,'23-05-2015',8),
(5,'01-07-2013',1),
(2,'03-03-2013',3),
(4,'28-04-2012',2),
(5,'15-07-2012',1),
(3,'09-11-2014',9),
(4,'05-12-2014',1);