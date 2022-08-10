CREATE DATABASE Ejercicio_final;

USE Ejercicio_final;

CREATE TABLE Dueno(
	DNI int,
	Nombre varchar(50),
	Apellido varchar(50),
	Telefono varchar(50),
	Direccion varchar(50),
	constraint pk_DNI primary key (DNI)
)

CREATE TABLE Perro(
	ID_Perro int,
	Nombre varchar(50),
	Fecha_nac varchar(50),
	Sexo varchar(50),
	DNI_dueno int,
	constraint pk_ID_Perro primary key (ID_Perro),
	constraint fk_DNI_dueno foreign key(DNI_dueno) references Dueno (DNI)
)

CREATE TABLE Historial(
	ID_Historial int,
	Fecha varchar(50),
	Perro int,
	Descripcion varchar(50),
	Monto float,
	constraint pk_ID_Historial primary key (ID_Historial),
	constraint fk_Perro foreign key(Perro) references Perro (ID_Perro)
)