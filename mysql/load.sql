CREATE TABLE airlines (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    alias VARCHAR(255),
    iata VARCHAR(3),
    icao VARCHAR(4),
    callsign VARCHAR(255),
    country VARCHAR(255),
    active CHAR(1)
);

-- LOAD DATA INFILE '/data/airlines.dat'
-- INTO TABLE airlines
-- FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

CREATE TABLE airports (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255),
    country VARCHAR(255),
    iata VARCHAR(3),
    icao VARCHAR(4),
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6),
    altitude INT,
    timezone DECIMAL(4, 2),
    dst CHAR(1),
    tz_database_timezone VARCHAR(255),
    type VARCHAR(50),
    source VARCHAR(50)
);

-- LOAD DATA INFILE '/data/airports.dat'
-- INTO TABLE airports
-- FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- LINES TERMINATED BY '\n';

CREATE TABLE countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    iso_code CHAR(2) DEFAULT NULL,
    dafif_code CHAR(2) DEFAULT NULL
);

-- LOAD DATA INFILE '/data/countries.dat'
-- INTO TABLE countries
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- (name, iso_code, dafif_code);

CREATE TABLE planes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    iata_code CHAR(3) DEFAULT NULL,
    icao_code CHAR(4) DEFAULT NULL
);

-- LOAD DATA INFILE '/data/planes.dat'
-- INTO TABLE planes
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- (name, iata_code, icao_code);

CREATE TABLE routes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(3) NOT NULL,
    airline_id INT, -- FIX: nullable values present
    source_airport VARCHAR(4) NOT NULL,
    source_airport_id INT,  -- FIX: nullable values present
    destination_airport VARCHAR(4) NOT NULL,
    destination_airport_id INT,             -- FIX: nullable values present
    codeshare CHAR(1) DEFAULT NULL,
    stops INT DEFAULT 0,
    equipment VARCHAR(255) DEFAULT NULL
);

-- LOAD DATA INFILE '/data/routes.dat'
-- INTO TABLE routes
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- (airline, airline_id, source_airport, source_airport_id, destination_airport, destination_airport_id, codeshare, stops, equipment);
