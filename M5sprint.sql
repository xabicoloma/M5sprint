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

insert into usuario
values
	(default,"Nathan", "Drake", 37, "ndrake@example.com",6),
	(default,"Lara", "Croft", 29, "tombraider@example.com",5),
	(default,"Geralt", "Rivia", 92, "thewitcher@example.com",7),
	(default,"Aloy", "Ross", 19, "aross@example.com",3),
	(default,"Marcus", "Fenix", 45, "mfenix@example.com",8);

insert into operario
values
	(default,"Samus", "Aran", 32, "samusaran@metroid.com",7),
	(default,"Jill", "Valentine", 35, "jvalentine@umbrellacorps.com",5),
	(default,"Commander", "Shepard", 50, "csherpard@example.com",6),
	(default,"Ezio", "Auditore", 50, "eauditore@example.com",18),
	(default,"Arthur", "Morgan", 36, "amorgan@example.com",12);