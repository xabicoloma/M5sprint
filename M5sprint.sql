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
    
insert into registros
values
	(default, 1, 5, "2023-04-12", 7),
	(default, 2, 4, "2023-01-01", 4),
	(default, 3, 3, "2022-12-03", 3),
	(default, 4, 2, "2023-04-07", 1),
	(default, 5, 1, "2023-05-21", 5),
	(default, 5, 4, "2023-06-12", 6),
	(default, 4, 4, "2022-07-03", 4),
	(default, 3, 2, "2023-08-19", 6),
	(default, 3, 1, "2021-09-25", 2),
	(default, 1, 5, "2023-10-31", 7);

SELECT * 
FROM registros
order by evaluacion desc
limit 3;

SELECT *
FROM registros
order by evaluacion
limit 3;

SELECT id_operario, nombre, apellido, COUNT(*) AS numero_operaciones FROM registros 
JOIN operario ON operario.id = registros.id_operario
group by id_operario
order by numero_operaciones desc
limit 1;

SELECT id_usuario, nombre, apellido, COUNT(*) AS numero_consultas FROM registros
JOIN usuario ON usuario.id = registros.id_usuario
group by id_usuario
order by numero_consultas asc
limit 1;