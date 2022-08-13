create database peluqueria;

use peluqeria;

create table dueno(dni int primary key, nombre varchar(20), apellido varchar(20), telefono varchar(20), direccion varchar(20));
create table perro(id_perro int primary key, nombre varchar(20), fecha_nac varchar(20), sexo varchar(10), dni_dueno int, foreign key (dni_dueño) references dueno (dni));
create table historial(id_historial int primary key, fecha varchar(20), perro varchar(20), foreign key (perro) references perro (id_perro), descripcion varchar(1000), monto float);

insert into dueno (dni, nombre, apellido, telefono, direccion) values (123456, 'juan', 'pisoni', '333666999', 'tucuman 491');
insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values (1, 'zakk', '03/06/2008', 'macho', '333666999');

update dueno set direccion = 'libertad 123' where dni = 123456;