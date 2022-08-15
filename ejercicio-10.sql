/*crear base de datos*/
create database bd_peluqueria_canina;
/*ver bases de datos existentes*/
show databases;
/*indicar que base de datos usar*/
use bd_peluqueria_canina;
/*crear tabla para registrar dueños (nombre de tabla: dueno )*/
create table dueno (
dni int primary key,
nombre varchar(25),
apellido varchar(25)
,telefono varchar(12),
direccion varchar(40),
check (dni >1000000 and dni<99999999) 
);   
 
-- insertar datos de prueba de dueños (dni,'nombre','apellido','telefono','direccion')
insert into dueno(dni,nombre,apellido,telefono,direccion)
			values
            (42919473,'Raul','pedrozo','3456789011','calle siempre viva 123');   
            
-- crear tabla para registrar perros (nombre de tabla: perros)*/
create table perro (
	id_perro int auto_increment,
    nombre varchar(25),
	fech_nac varchar(10),
    sexo varchar(12) ,
    dni_dueno int,
    PRIMARY KEY (id_perro),
    foreign key(dni_dueno) references dueno(dni),
    check (dni_dueno >1000000 and dni_dueno<99999999)
	);
 -- dato de prueba de registro de perro
 insert into perro (nombre,fech_nac,sexo,dni_dueno)
 values
 ('pulgas','2021-2-21','macho',42919473);
 
-- crear tabla de registros de historial
create table historial (
id_historial int primary key auto_increment,
fecha varchar(10),
perro int,
descripcion varchar(255),
monto int,
foreign key(perro) references perro(id_perro),
check(monto>0));
-- registro de prueba
insert into historial(fecha,perro,descripcion,monto)
values
('120/2/2021',1,'baño', 1000);
select * from historial;

-- vaciar tabla historial y recetear id
truncate table historial;
    
    
