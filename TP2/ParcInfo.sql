BEGIN TRANSACTION;

--Creation du table Segment
CREATE TABLE Segment (
    indIP INT NOT NULL PRIMARY KEY,
    nomSegment VARCHAR NOT NULL,
    etage INT
);

--Creation du table Salle
CREATE TABLE Salle (
    nSalle INT NOT NULL PRIMARY KEY,
    nomSalle VARCHAR NOT NULL,
    nbPoste INT,
    indIP INT
);

--Creation du table Poste
CREATE TABLE Poste (
    nPoste INT NOT NULL PRIMARY KEY,
    nomPoste VARCHAR NOT NULL,
    indIp INT,
    ad VARCHAR(255),
    typePoste VARCHAR,
    nSalle INT
);

--Creation du table Logiciel
CREATE TABLE Logiciel (
    nLog INT NOT NULL PRIMARY KEY,
    nomLog VARCHAR,
    dataAch DATE,
    version VARCHAR,
    typeLog VARCHAR,
    prix REAL CHECK (prix > 0)
);

--Creation du table Installer
CREATE TABLE Installer (
    numIns SERIAL NOT NULL PRIMARY KEY,
    nPoste INT,
    nLog INT,
    dateIns TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delai INT
);

--Creation du table Types
CREATE TABLE Types (
    typeLP VARCHAR NOT NULL PRIMARY KEY,
    nomType VARCHAR
);

COMMIT;