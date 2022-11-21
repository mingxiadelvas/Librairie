BEGIN TRANSACTION;

--Modification du column indIP dans la table Segment
ALTER TABLE Segment
ALTER COLUMN indIP TYPE VARCHAR;

--Modification des columns nSalle, indIP dans la table Salle
ALTER TABLE Salle
ALTER COLUMN nSalle TYPE VARCHAR,
ALTER COLUMN indIP TYPE VARCHAR;

--Modification des columns nPosste, indIP, nSalle dans la table Poste
ALTER TABLE Poste
ALTER COLUMN nPoste TYPE VARCHAR,
ALTER COLUMN indIP TYPE VARCHAR,
ALTER COLUMN nSalle TYPE VARCHAR;

--Modification du column nLog dans la table Logiciel
ALTER TABLE Logiciel
ALTER COLUMN nLog TYPE VARCHAR;

--Modification des columns nPoste, nLog, dateIns dans la table Installer
ALTER TABLE Installer
ALTER COLUMN nPoste TYPE VARCHAR,
ALTER COLUMN nLog TYPE VARCHAR,
ALTER COLUMN dateIns DROP NOT NULL;

COMMIT;