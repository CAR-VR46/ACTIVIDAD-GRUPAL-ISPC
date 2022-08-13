----------------------------------------------------------------------------------

-- PUNTO A y B:
CREATE DATABASE Ejercicio_final_luciano_nieves;

USE Ejercicio_final_luciano_nieves;

-- Tabla Dueno
CREATE TABLE Dueno(
	DNI int NOT NULL PRIMARY KEY,
	Nombre varchar(50) NOT NULL,
	Apellido varchar(50) NOT NULL,
	Telefono varchar(50) NOT NULL,
	Direccion varchar(50) NOT NULL
)

-- Tabla Perro
CREATE TABLE Perro(
	ID_Perro int NOT NULL auto_increment PRIMARY KEY,
	Nombre varchar(50) NOT NULL,
	Fecha_nac varchar(50) NOT NULL,
	Sexo varchar(50) NOT NULL,
	DNI_dueno int NOT NULL
)

ALTER TABLE Perro ADD FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI);

-- Tabla Historial
CREATE TABLE Historial(
	ID_Historial int NOT NULL auto_increment PRIMARY KEY,
	Fecha varchar(50) NOT NULL,
	Perro int NOT NULL,
	Descripcion varchar(50) NOT NULL,
	Monto float NOT NULL
)

ALTER TABLE Historial ADD FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro);

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES('1234567', 'Pablo', 'Perez', '154768930', 'Las toninas 2044');

INSERT INTO Perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES('Ailin', '10/05/2019', 'Hembra', '1234567');

----------------------------------------------------------------------------------

-- PUNTO C (ejercicio 5):
SELECT Perro.Nombre as 'Nombre'
FROM Perro, Dueno 
WHERE Perro.DNI_Dueno = Dueno.DNI AND Dueno.Nombre = 'Pedro';

----------------------------------------------------------------------------------