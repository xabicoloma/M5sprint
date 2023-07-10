create database modulo5_sprint;
use modulo5_sprint;

create table usuario(
	id INT auto_increment primary key,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    edad INT NOT NULL,
    correo_electronico VARCHAR(50) NOT NULL,
    accesos INT DEFAULT 1
);

create table operario(
	id INT auto_increment primary key,
	nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    edad INT NOT NULL,
    correo_electronico VARCHAR(50) NOT NULL,
    soporte INT DEFAULT 1
);

Create table registros(
	id INT auto_increment primary key,
    id_operario INT,
    id_usuario INT,
    fecha DATE NOT NULL,
    evaluacion INT NOT NULL,
    foreign key(id_operario) references operario(id),
    foreign key(id_usuario) references usuario(id)
);