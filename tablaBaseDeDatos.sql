create database peluqueria;

use peluqeria;

create table dueno(dni int primary key, nombre varchar(20), apellido varchar(20), telefono varchar(20), direccion varchar(20));
create table perro(id_perro int primary key, nombre varchar(20), fecha_nac varchar(20), sexo varchar(1),dni_dueno int, foreign key (dni_dueno) references dueno (dni));
create table historial(id_historial int primary key, fecha varchar(20), perro varchar(20), foreign key (perro) references perro (id_perro), descripcion varchar(100), monto float);

INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) 

VALUES ("40.404.284", "tay","Vill","264293940","independencia 505");
INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) 
VALUES(4,"Rocco","M","21/09/21");