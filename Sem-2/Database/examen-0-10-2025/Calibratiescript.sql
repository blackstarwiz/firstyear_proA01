DROP DATABASE IF EXISTS Dokterspraktijk;
CREATE DATABASE Dokterspraktijk;
USE Dokterspraktijk;

-- Artsen

CREATE TABLE Artsen (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naam VARCHAR(100) NOT NULL,
    Email VARCHAR(100)
);


-- Specialisaties

CREATE TABLE Specialisaties (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naam VARCHAR(100) NOT NULL
);


-- ArtsInSpecialisatie

CREATE TABLE ArtsInSpecialisatie (
    Arts_Id INT,
    Specialisatie_Id INT,
    PRIMARY KEY (Arts_Id, Specialisatie_Id),
    FOREIGN KEY (Arts_Id) REFERENCES Artsen(Id),
    FOREIGN KEY (Specialisatie_Id) REFERENCES Specialisaties(Id)
);


-- Patiënten

CREATE TABLE Patienten (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Naam VARCHAR(100) NOT NULL,
    Email VARCHAR(100)
);


-- Consultaties

CREATE TABLE Consultaties (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Arts_Id INT,
    Patient_Id INT,
    Datum DATETIME NOT NULL,
    FOREIGN KEY (Arts_Id) REFERENCES Artsen(Id),
    FOREIGN KEY (Patient_Id) REFERENCES Patienten(Id)
);


-- Betalingen

CREATE TABLE Betalingen (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Consultatie_Id INT NOT NULL,
    Bedrag DECIMAL(8,2) NOT NULL,
    Opmerking VARCHAR(255),
    FOREIGN KEY (Consultatie_Id) REFERENCES Consultaties(Id)
);


-- Testdata

INSERT INTO Artsen (Naam, Email) VALUES 
('Dr. Janssens', 'janssens@praktijk.be'),
('Dr. Peeters', 'peeters@praktijk.be');

INSERT INTO Specialisaties (Naam) VALUES 
('Huisartsgeneeskunde'),
('Dermatologie');

INSERT INTO ArtsInSpecialisatie (Arts_Id, Specialisatie_Id) VALUES 
(1, 1),
(2, 2);

INSERT INTO Patienten (Naam, Email) VALUES 
('Alice Mertens', 'alice@example.com'),
('Bob Willems', 'bob@example.com');

INSERT INTO Consultaties (Arts_Id, Patient_Id, Datum) VALUES 
(1, 1, '2025-05-20 10:00:00'),
(2, 2, '2025-05-21 14:30:00');

INSERT INTO Betalingen (Consultatie_Id, Bedrag, Opmerking) VALUES 
(1, 25.00, 'Betaling geregistreerd na consultatie'),
(2, 25.00, 'Betaling geregistreerd na consultatie');

