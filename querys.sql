create database colegio;
show databases;
use colegio;
-- hemos creado la bd
create table alumnos(
id int not null,
nombre char(45) not null,
apellido char(45) not null,
correo varchar(45) not null,
PRIMARY KEY(id)
);
-- creamos la tabla dentro de nuestra bd, le asignamos tipos de variables
-- tambien definimos cual es nuestra (PK)


insert into alumnos(nombre,apellido,correo)
values ('fernanda','muñoz','fernandam@gmail.com'),
       ('danae','molina','danae123@gmail.com'),
	   ('kmila','tain','kmilat@gmail.com');
-- como ya creamos las tablas, ahora insertaremos datos en ellas
-- la palabra reservada es insert into

select * from alumnos;
-- consultamos la tabla y sus datos ingresados

create table materias(
id int not null auto_increment,
asignatura varchar(45) not null,
profesores varchar(45) not null, 
sala varchar(45) not null,
utilizado_por int,
primary key(id),
foreign key(utilizado_por) references alumnos(id)
);
-- creamos nuestra segunda bd pero ahora le asignaremos nuevos atributos
-- le decimos que tiene como llave foranea el id alumnos y creamos "utilizado_por"
-- para enlazarlo con la otra tabla

select * from materias;
insert into materias(asignatura,profesores,sala,utilizado_por)
values ('lenguaje','tamara','5b','1'),
       ('matematica','camila','4a','2'),
       ('historia','romina','7a','3');

create table limpieza(
id int not null auto_increment,
nombre char(45) not null,
telefono int(45) not null,
usado_por int,
primary key(id),
foreign key(usado_por) references alumnos(id)
);
-- creamos nuestra tercera bd y tambien le asignaremos nuevos atributos, su llave foranea es alumnos y crearemos ("usado_por") 
-- para enlazarlo con otra tabla

select * from limpieza;
insert into limpieza(nombre,telefono,usado_por)
values ('laura','978541269','1'),
       ('maria','987456321','2'),
       ('josefa','95864124','3');
