BEGIN TRANSACTION;

--Supprimer les enregistrements qui pourront causer erreurs
DELETE FROM Salle WHERE Salle.indIP='130.120.83';

DELETE FROM Logiciel WHERE logiciel.typelog='BeOS';

--Ajout des contraintes referentielles
--Poste.#indIP
ALTER TABLE Poste
ADD FOREIGN KEY(indIP) REFERENCES Segment(indIP);

--Poste.#typePoste
ALTER TABLE Poste
ADD FOREIGN KEY (typePoste) REFERENCES Types(typeLP);

--Poste.#nSalle
ALTER TABLE Poste
ADD FOREIGN KEY (nSalle) REFERENCES Salle(nSalle);

--Installer.#nPoste
ALTER TABLE Installer
ADD FOREIGN KEY(nPoste) REFERENCES Poste(nPoste);

--Installer.#nLog
ALTER TABLE Installer
ADD FOREIGN KEY(nLog) REFERENCES Logiciel(nLog);

--Installer.#typelog
ALTER TABLE Logiciel
ADD FOREIGN KEY(typelog) REFERENCES Types(typeLP);

--Salle.#indIP
ALTER TABLE Salle
ADD FOREIGN KEY(indIP) REFERENCES Segment(indIP);

COMMIT;