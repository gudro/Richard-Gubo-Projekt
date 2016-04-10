SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;


CREATE TABLE Roles (
id SERIAL NOT NULL PRIMARY KEY,
role VARCHAR(25)
);

CREATE TABLE Classes (
id SERIAL NOT NULL PRIMARY KEY,
class VARCHAR(50)
);

CREATE TABLE Types (
id SERIAL NOT NULL PRIMARY KEY,
type VARCHAR(50)
);

CREATE TABLE Missions (
id SERIAL NOT NULL PRIMARY KEY,
engagement VARCHAR(100),
result VARCHAR(50),
location VARCHAR(100),
d_from DATE,
d_to DATE
);

CREATE TABLE Officers (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100),
role_id INT REFERENCES Roles(id),
active boolean
);

CREATE TABLE Ports (
id SERIAL NOT NULL PRIMARY KEY,
city VARCHAR(100),
co_id INT REFERENCES Officers(id)
);

CREATE TABLE Fleets (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100),
operation_waters VARCHAR(100),
co_id INT REFERENCES Officers(id),
port_id INT REFERENCES Ports(id)
);

CREATE TABLE Fleets_on_Missions(
fleet_id INT REFERENCES Fleets(id),
mission_id INT REFERENCES Missions(id)
);

CREATE TABLE Ships (
hull_number INT UNIQUE NOT NULL PRIMARY KEY,
name VARCHAR(100),
class_id INT REFERENCES Classes(id),
comission DATE,
crew INT,
fleet_id INT REFERENCES Fleets(id),
co_id INT REFERENCES Officers(id)
);

CREATE TABLE Servises (
id SERIAL NOT NULL PRIMARY KEY,
type_id INT REFERENCES Types(id),
date DATE,
ship_id INT REFERENCES Ships(hull_number)
);