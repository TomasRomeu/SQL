execute as user = 'User_01';

if not exists (select * from sysobjects where name='Departamento' and xtype='U')
    create table Departamento 
	(
        Id int Primary Key,
		Nombre varchar(50),
    );
go

if not exists (select * from sysobjects where name='Profesor' and xtype='U')
    create table Profesor 
	(
        Id int Primary Key,
		Nif varchar(9),
		Nombre varchar(50),
		Apellido1 varchar(50),
		Apellido2 varchar(50),
		Ciudad varchar(25),
		Direccion varchar(50),
		Telefono varchar(9),
		Fecha_Nac date,
		Sexo VARCHAR(5)
             CHECK( Sexo IN('H','M','Otro')),
		Id_Departamento INT FOREIGN KEY REFERENCES Departamento(Id),
    );
go
/*
if not exists (select * from sysobjects where name='Profesor' and xtype='U')
    create table Profesor 
	(
        Id int Primary Key,
		Nif varchar(9),
		Nombre varchar(50),
		Apellido1 varchar(50),
		Apellido2 varchar(50),
		Ciudad varchar(25),
		Direccion varchar(50),
		Telefono varchar(9),
		Fecha_Nac date,
		Sexo VARCHAR(5)
             CHECK( Sexo IN('H','M','Otro')),
		Id_Departamento INT FOREIGN KEY REFERENCES Departamento(Id),
    );
go
*/
if not exists (select * from sysobjects where name='Alumno' and xtype='U')
    create table Alumno 
	(
        Id int Primary Key,
		Nif varchar(9),
		Nombre varchar(50),
		Apellido1 varchar(50),
		Apellido2 varchar(50),
		Ciudad varchar(25),
		Direccion varchar(50),
		Telefono varchar(9),
		Fecha_Nac date,
		Sexo VARCHAR(5)
             CHECK( Sexo IN('H','M','Otro')),
    );
go
if not exists (select * from sysobjects where name='Curso_Escolar' and xtype='U')
    create table Curso_Escolar 
	(
        Id int PRIMARY KEY,
		anyo_Inicio smalldatetime,
		anyo_Fin smalldatetime,
    );
go

if not exists (select * from sysobjects where name='Grado' and xtype='U')
    create table Grado 
	(
        Id int PRIMARY KEY,
		Nombre varchar(100),
    );
go
 
if not exists (select * from sysobjects where name='Asignatura' and xtype='U')
    create table Asignatura 
	(
        Id int PRIMARY KEY,
		Nombre varchar(100),
		Creditos float,
		Tipo VARCHAR(15)
             CHECK( Tipo IN('básica','obligatoria','optativa')),
		Curso tinyint,
		Cuatrimestre tinyint,
		Id_Profesor INT FOREIGN KEY REFERENCES Profesor(Id),
		Id_Grado int FOREIGN KEY REFERENCES Grado(Id),
    );
go

if not exists (select * from sysobjects where name='Alumno_Se_Matricula_Asignatura' and xtype='U')
    create table Alumno_Se_Matricula_Asignatura 
	(
        Id_Alumno int,
		Id_Asignatura int ,
		Id_Curso_Escolar int,
		constraint PK_Asignatura PRIMARY KEY(Id_Alumno, Id_Asignatura,Id_Curso_Escolar),
		constraint FK_Alumno FOREIGN KEY(Id_Alumno) REFERENCES Alumno(Id),
		constraint FK_Asignatura FOREIGN KEY(Id_Asignatura) REFERENCES Asignatura(Id),
		constraint FK_Curso FOREIGN KEY(Id_Curso_Escolar) REFERENCES Curso_Escolar(Id),
    );
go
