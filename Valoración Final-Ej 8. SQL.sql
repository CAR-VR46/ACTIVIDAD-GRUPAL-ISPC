CREATE DATABASE Valoración_Final;

USE Valoración_Final;

CREATE TABLE Dueno (
DNI int NOT NULL,
Nombre varchar(100) NOT NULL,
Apellido varchar(100) NOT NULL,
Telefono bigint NOT NULL,
Dirección varchar(150) NOT NULL,
CONSTRAINT PK_DNI PRIMARY KEY(DNI)
)

CREATE TABLE Perro (
ID_Perro int NOT NULL,
Nombre varchar(100) NOT NULL,
Fecha_de_nacimiento varchar (30),
Sexo varchar(30),
DNI_dueno int NOT NULL,
CONSTRAINT PK_ID_Perro PRIMARY KEY (ID_Perro),
CONSTRAINT Fk_DNI_dueno FOREIGN KEY(DNI_dueno) REFERENCES Dueno (DNI) 
)

CREATE TABLE Historial(
ID_Historial int NOT NULL,
Fecha varchar(30) NOT NULL,
Perro int NOT NULL,
Descripción varchar(200),
Monto float NOT NULL,
CONSTRAINT PK_ID_Historial PRIMARY KEY (ID_Historial),
CONSTRAINT FK_Perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
)

INSERT INTO Dueno(DNI,Nombre,Apellido,Telefono,Dirección) values(24570005,'Odiseo', 'De Ítaca',2811930,'1143 calle Homero')
INSERT INTO Perro(Id_Perro,Nombre,Fecha_de_nacimiento,Sexo,DNI_dueno) values(10,'Argos','17/02/2012','Macho',24570005)

#Ejercicio 8:Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10. 

INSERT INTO Historial(ID_Historial,Fecha,Perro,Descripción,Monto) values (123,'14/08/2022',10,'Baño y corte de pelo',2000)

#El registro del punto 2 tiene como id del perro 10 para que coincida con el historial.

