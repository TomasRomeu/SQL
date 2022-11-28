use Dicsys
go

execute as user = 'User_01';
go

/*
CREATE FUNCTION Eliminar_Acentos (@NAME nvarchar(50))
RETURNS nvarchar(50)
AS
BEGIN
  declare @TempString nvarchar(100)
  set @TempString = @NAME 
  set @TempString = LOWER(@TempString)
  set @TempString =  replace(@TempString,' ', '')
  set @TempString =  replace(@TempString,'à', 'a')
  set @TempString =  replace(@TempString,'è', 'e')
  set @TempString =  replace(@TempString,'é', 'e')
  set @TempString =  replace(@TempString,'ì', 'i')
  set @TempString =  replace(@TempString,'ò', 'o')
  set @TempString =  replace(@TempString,'ù', 'u')
  set @TempString =  replace(@TempString,'ç', 'c')
  set @TempString =  replace(@TempString,'''', '')
  set @TempString =  replace(@TempString,'`', '')
  set @TempString =  replace(@TempString,'-', '')
  return @TempString
END
GO

select * from Eliminar_Acentos;
*/


--PARTE2
--1. Devuelve todos los datos del alumno más joven
select Fecha_Nac, Id, Nombre, Apellido1, Apellido2, Ciudad, Direccion, Telefono
from [Esquema_01].[Alumno]
where Fecha_Nac in (select MIN(Fecha_Nac) from [Esquema_01].[Alumno] order by (Fecha_Nac);

--2. Devuelve un listado con los profesores que no están asociados a un departamento
select * from [Esquema_01].[Profesor];
select * 
from [Esquema_01].[Profesor]
where Id_Departamento is NULL;

--3. Devuelve un listado con los departamentos que no tienen profesores asociados
select * 
from [Esquema_01].[Departamento] ed
left join Esquema_01.Profesor ep on ed.Id = ep.Id_Departamento
where ep.Id_Departamento is null;

--4. Devuelve un listado con los profesores que tienen un departamento asociado y que no 
--imparten ninguna asignatura.
select ep.Nombre, ep.Apellido1, ep.Apellido2, ep.Id_Departamento 
from Esquema_01.Profesor ep
left join Esquema_01.Asignatura ea on ep.Id = ea.Id_Profesor
where ep.Id_Departamento is not null AND ea.Id_Profesor is null;

--join Esquema_01.Departamento ed on ep.Id_Departamento = ed.Id


--5. Devuelve un listado con las asignaturas que no tienen un profesor asignado
select * 
from Esquema_01.Asignatura ea
left join Esquema_01.Profesor ep on ea.Id_Profesor = ep.Id
where ea.Id_Profesor is null;

--6. Devuelve un listado con todos los departamentos que no han impartido asignaturas en 
--ningún curso escolar.
select * 
--select distinct ed.id, ed.nombre--este distinct te devuelve solo el nombre del departamento--
from Esquema_01.Departamento ed
left join Esquema_01.Profesor ep  on ed.Id = ep.Id_Departamento 
left join Esquema_01.Asignatura ea on ea.Id_Profesor = ep.Id
left join Esquema_01.Alumno_Se_Matricula_Asignatura eam on ea.Id = eam.Id_Asignatura
left join Esquema_01.Curso_Escolar ece on eam.Id_Curso_Escolar = ece.Id
where eam.Id_Curso_Escolar is NULL;



/*7. Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen 
--vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún 
departamento asociado. El listado debe devolver cuatro columnas, nombre del 
departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará 
ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el 
nombre.*/
SELECT ed.Nombre, ep.Nombre, ep.Apellido1, ep.Apellido2 
FROM Esquema_01.Departamento ed
RIGHT JOIN Esquema_01.Profesor ep ON ed.Id = ep.Id_Departamento
ORDER BY ed.Nombre, ep.Nombre, ep.Apellido1, ep.Apellido2;

/*8. Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se 
haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del 
departamento y el nombre de la asignatura que no se haya impartido nunca.*/
select ed.Nombre,  ea.Nombre
from Esquema_01.Departamento ed
left join Esquema_01.Profesor ep  on ed.Id = ep.Id_Departamento 
left join Esquema_01.Asignatura ea on ea.Id_Profesor = ep.Id
left join Esquema_01.Alumno_Se_Matricula_Asignatura eam on ea.Id = eam.Id_Asignatura
left join Esquema_01.Curso_Escolar ece on eam.Id_Curso_Escolar = ece.Id
where ep.Id IS NOT NULL and ea.Id_Profesor IS NOT NULL;
--hay materias que no se dan en ningun curso pero como tienen profesor nulo no te las va a traer.

--9. Eliminar aquellos profesores que hayan nacido en 1979. Tener en cuenta las relaciones.
UPDATE Esquema_01.Asignatura  
SET Id_Profesor = NULL
where Id_Profesor IN ( 
select EP.Id
from Esquema_01.Profesor EP 
where YEAR(EP.Fecha_Nac) =(1979));

DELETE 
FROM Esquema_01.Profesor
WHERE YEAR(Fecha_Nac) =(1979);


--10. Eliminar a la alumna “Sonia Gea Ruiz”. Tener en cuenta las relaciones.
DELETE
FROM Esquema_01.Alumno_Se_Matricula_Asignatura
WHERE Id_Alumno IN (
select EA.Id from Esquema_01.Alumno EA
WHERE EA.Nombre like '%Sonia%' AND EA.Apellido1 like '%GEA%' AND EA.Apellido2 like '%Ruiz%');

DELETE 
FROM Esquema_01.Alumno
WHERE Nombre like '%Sonia%' AND Apellido1 like '%GEA%' AND Apellido2 like '%Ruiz%';


--PARTE3
/*
1. Crear una vista para que un usuario X (no es necesario crearlo) pueda obtener una lista de 
todos los alumnos que cursaron la asignatura “Álgegra lineal y matemática discreta”.
*/
USE Dicsys ;   
GO  
CREATE VIEW VISTA_X1  
AS  
SELECT  EA.Nombre, EA.Apellido1, EA.Apellido2
FROM Esquema_01.Alumno EA 
join Esquema_01.Alumno_Se_Matricula_Asignatura ASM  
ON   EA.Id = ASM.Id_Alumno
join Esquema_01.Asignatura EAS on ASM.Id_Asignatura = EAS.Id
WHERE EAS.Nombre like '%Álgegra lineal y matemática discreta%';
GO  

SELECT distinct Nombre, Apellido1, Apellido2   
FROM VISTA_X1  
ORDER BY Nombre;  

/*
2. Crear una tabla en el esquema de dbo que sea idéntica a la tabla alumno (sin FKs), e insertar 
los datos de Data_SQLServer.sql.
*/
if not exists (select * from sysobjects where name='Alumno2' and xtype='U')
    create table Alumno2 
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

	/* Persona */
INSERT INTO Alumno2 VALUES (1, '89542419S', 'Juan', 'Saez', 'Vega', 'Almería', 'C/ Mercurio', '618253876', '1992/08/08', 'H');
INSERT INTO Alumno2 VALUES (2, '26902806M', 'Salvador', 'Sánchez', 'Pérez', 'Almería', 'C/ Real del barrio alto', '950254837', '1991/03/28', 'H');
INSERT INTO Alumno2 VALUES (4, '17105885A', 'Pedro', 'Heller', 'Pagac', 'Almería', 'C/ Estrella fugaz', NULL, '2000/10/05', 'H');
INSERT INTO Alumno2 VALUES (6, '04233869Y', 'José', 'Koss', 'Bayer', 'Almería', 'C/ Júpiter', '628349590', '1998/01/28', 'H');
INSERT INTO Alumno2 VALUES (7, '97258166K', 'Ismael', 'Strosin', 'Turcotte', 'Almería', 'C/ Neptuno', NULL, '1999/05/24', 'H');
INSERT INTO Alumno2 VALUES (9, '82842571K', 'Ramón', 'Herzog', 'Tremblay', 'Almería', 'C/ Urano', '626351429', '1996/11/21', 'H');
INSERT INTO Alumno2 VALUES (11, '46900725E', 'Daniel', 'Herman', 'Pacocha', 'Almería', 'C/ Andarax', '679837625', '1997/04/26', 'H');
INSERT INTO Alumno2 VALUES (19, '11578526G', 'Inma', 'Lakin', 'Yundt', 'Almería', 'C/ Picos de Europa', '678652431', '1998/09/01', 'M');
INSERT INTO Alumno2 VALUES (21, '79089577Y', 'Juan', 'Gutiérrez', 'López', 'Almería', 'C/ Los pinos', '678652431', '1998/01/01', 'H');
INSERT INTO Alumno2 VALUES (22, '41491230N', 'Antonio', 'Domínguez', 'Guerrero', 'Almería', 'C/ Cabo de Gata', '626652498', '1999/02/11', 'H');
INSERT INTO Alumno2 VALUES (23, '64753215G', 'Irene', 'Hernández', 'Martínez', 'Almería', 'C/ Zapillo', '628452384', '1996/03/12', 'M');
INSERT INTO Alumno2 VALUES (24, '85135690V', 'Sonia', 'Gea', 'Ruiz', 'Almería', 'C/ Mercurio', '678812017', '1995/04/13', 'M');

select * from [Esquema_01].[Alumno2];

/*
3. Aplicar un método que, actualice esta “nueva tabla” cuando el nombre, los apellidos, la 
ciudad hayan cambiado, inserte cuando el registro sea nuevo, y borre aquellos que no estén 
en la tabla alumno (original).
*/


/*
4. Colocar índices personalizados dentro las tablas: alumno, profesor y asignatura. Esto es para 
manejo propio del criterio de cada uno.
*/
--CREATE INDEX index1 ON schema1.table1 (column1);
go
create index index_Id_Alumno on [Esquema_01].[Alumno] (Id);
go
create index index_Id_Profesor on [Esquema_01].[Profesor] (Id);
go
create index index_Id_Asignatura on [Esquema_01].[Asignatura] (Id);

/*
5. Crear una tabla donde se encontrarán las notas finales. Debe contener: 3 notas principales 
(pueden ser aleatorias), el id de los alumnos, la asignatura para la cual fue tomada y el año 
escolar. La nota final será un promedio de las 3 notas principales
*/
select * from [Esquema_01].[Alumno];
Use Dicsys
go
execute as user = 'User_01'
go
if not exists (select * from sysobjects where name='Notas' and xtype='U')
CREATE TABLE Esquema_01.Notas
(
Id_Notas INT NOT NULL identity,
Nota_1 INT NOT NULL,
Nota_2 INT NOT NULL,
Nota_3 INT NOT NULL,
Nota_Final AS ((Nota_1 + Nota_2 + Nota_3)/3), 
Id_Alumno INT NOT NULL,							
Id_Asignatura INT NOT NULL,
Id_Curso_Escolar INT NOT NULL,
Fk_Id_Alumno_Notas int FOREIGN KEY (Id_Alumno) REFERENCES [Esquema_01].[Alumno](Id),
Fk_Id_Curso_Escolar int FOREIGN KEY (Id_Curso_Escolar) REFERENCES [Esquema_01].[Curso_Escolar] (Id),
Fk_Id_Asignatura_Notas int FOREIGN KEY (Id_Asignatura) REFERENCES [Esquema_01].[Asignatura](Id));

/*
6. Crear un proceso que cargue la tabla anterior con cada alumno, cada asignatura, y cada año 
escolar. Se puede usar cursores.
*/

DECLARE @Nota_1 int
DECLARE @Nota_2 int
DECLARE @Nota_3 int
DECLARE @Id_Alumno int
DECLARE @Id_Asignatura int
DECLARE @Id_Curso_Escolar int
DECLARE Cursor_Alumno CURSOR FOR SELECT Id from [Esquema_01].[Alumno];
DECLARE Cursor_Asignatura CURSOR FOR SELECT Id from [Esquema_01].[Asignatura];
DECLARE Cursor_Curso CURSOR FOR SELECT Id from [Esquema_01].[Curso_Escolar];
DECLARE @COUNTER smallint

OPEN Cursor_Alumno;
OPEN Cursor_Asignatura;
OPEN Cursor_Curso;

FETCH NEXT FROM Cursor_Alumno into @Id_Alumno;
FETCH NEXT FROM Cursor_Asignatura into @Id_Asignatura;
FETCH NEXT FROM Cursor_Curso into @Id_Curso_Escolar;

SET @COUNTER = 1;

WHILE @COUNTER < 12
BEGIN
	 set @Nota_1 = (SELECT FLOOR(RAND()*(10-1)+1)) 
     set @Nota_2 = (SELECT FLOOR(RAND()*(10-1)+1))	
     set @Nota_3 = (SELECT FLOOR(RAND()*(10-1)+1))
	insert into [Esquema_01].[Notas] (Nota_1, Nota_2, Nota_3, Id_Alumno, Id_Asignatura, Id_Curso_Escolar)
	VALUES( @Nota_1, @Nota_2, @Nota_3, @Id_Alumno, @Id_Asignatura, @Id_Curso_Escolar);
	FETCH NEXT FROM Cursor_Alumno into @Id_Alumno
	FETCH NEXT FROM Cursor_Asignatura into @Id_Asignatura
	FETCH NEXT FROM Cursor_Curso into @Id_Curso_Escolar

	SET @COUNTER = @COUNTER + 1
END
CLOSE Cursor_Alumno;
CLOSE Cursor_Asignatura;
CLOSE Cursor_Curso;

/*
7. Crear un proceso que actualice la nota de un alumno.
*/
GO
CREATE PROCEDURE Actualizar_Nota
	@Id_Alumno int,
	@Nota_Final int
AS
	SET NOCOUNT ON;
	UPDATE [Esquema_01].[Notas] SET Nota_1 = @Nota_Final
	WHERE Id_Notas = @Id_Alumno
go

	

/*
8. Agregar a la tabla en donde se encontrarán las notas finales, una columna de nota del 
coloquio. Esta columna puede ser nula. Esto último dependerá del criterio de quien haga la 
columna.
*/
go
ALTER TABLE [Esquema_01].[Notas]
ADD Coloquio CHAR(1) NULL;

DECLARE @Id_Alumno int
DECLARE @Nota_Final int

DECLARE Cursor_Coloquio CURSOR FOR SELECT Id_Alumno, Nota_Final from Esquema_01.Notas

OPEN Cursor_Coloquio;
FETCH NEXT FROM Cursor_Coloquio INTO @Id_Alumno, @Nota_Final;
WHILE @@FETCH_STATUS = 0
BEGIN

	IF @Nota_Final > 6
	BEGIN
	UPDATE Esquema_01.Notas SET Coloquio = 'S'
	WHERE  Id_Alumno = @Id_Alumno;
	END
	ELSE IF @Nota_Final = 6
	BEGIN
	UPDATE Esquema_01.Notas SET Coloquio = 'A' 
	WHERE Id_Alumno = @Id_Alumno;
	END
	ELSE
	BEGIN
	UPDATE Esquema_01.Notas SET Coloquio = 'N'
	WHERE Id_Alumno = @Id_Alumno;
	END

	FETCH NEXT FROM Cursor_Coloquio INTO @Id_Alumno, @Nota_Final;
	END
	CLOSE Cursor_Coloquio;
	DEALLOCATE Cursor_Coloquio;

	Select * from Esquema_01.Notas;
/*
9. Crear una vista de alumnos desaprobados. Usen el criterio que les guste >= 4 o >= 6 
aprobados.
*/
GO  
CREATE VIEW Vista_ALumnos_Desaprobados2  
AS  
SELECT  EA.Nombre, EA.Apellido1, EA.Apellido2
FROM Esquema_01.Alumno EA 
join Esquema_01.Notas EN on EA.Id = EN.Id_Alumno  
WHERE EN.Nota_Final>4;
GO

SELECT *  
FROM Vista_ALumnos_Desaprobados2  
ORDER BY Nombre;


/*
10. Realizar un proceso que reciba por parámetro la nota de coloquio y el alumno, y que sea 
insertado sobre la misma tabla.
*/
/*
CREATE PROCEDURE SP_Insertar_Alumn_Coloquio
@Id_Alumno int,
@Coloquio CHAR(1)
AS
	SET NOCOUNT ON
	INSERT INTO [Esquema_01].[Notas] (Id_Alumno, Coloquio)
	VALUES (@Id_Alumno, @Coloquio);
GO
EXEC SP_Insertar_Alumn_Coloquio 50, 'S';
*/

--PARTE 4
/*
1. Como usuario 3, quiero ver un listado de todos los profesores y sus asignaturas.
*/
GO
execute as user = 'User_03';
GO
select distinct EP.Nombre, EP.Apellido1, EP.Apellido2, EA.Nombre
from Esquema_01.Profesor EP
JOIN Esquema_01.Asignatura EA on EP.Id = EA.Id_Profesor
order by EP.Nombre, EP.Apellido1, EP.Apellido2, EA.Nombre;
GO

/*
2. Como usuario 2, quiero poder crear una tabla en la base de datos actual que me tenga todos 
los alumnos de la promoción 2010. Este usuario solo sabe consultar a la base de datos, y su 
conocimiento técnico de la misma, es mínimo.
*/
execute as user = 'User_02';
--CREARIA LA TABLA CON LOS ALUMNOS QUE HAYAN EGRESADO EN 2010 
--Y LUEGO LE HARIA UN SELECT * A ESA TABLA 
/*
3. Entra el usuario Pepito y necesita poder consular sobre la base de datos actual.
*/
USE Dicsys
GO
CREATE LOGIN Dicsys with password = ' ';

USE Dicsys
GO
CREATE USER Pepito FOR LOGIN Dicsys WITH DEFAULT_SCHEMA = Esquema_01;
GO
execute as user = 'Pepito';
-- a traves de propiedades(porque me tiraba error cuando lo ponia por codigo) le asigne los permisos de data reader, entonces va a poder leer los contenidos de las tablas
Select * from Esquema_01.Alumno;


/*
4. El gerente de la empresa le da los privilegios a Pepito y ahora puede ejecutar store 
procedures dentro de la base de datos.
*/
execute as user = 'User_01'
use Dicsys
GO
GRANT EXECUTE TO [Pepito];
GO
/*
USE Dicsys;   
GRANT EXECUTE ON SCHEMA::[Esquema_01]
    TO [Pepito];  
GO
*/


/*
5. Se le han denegado los permisos a Pepito y se necesita eliminar este usuario de la base de 
datos. Ordenes directivas.
*/
use Dicsys
DENY [db_datawriter] PRIVILEGES to [Pepito];

DROP USER IF EXISTS [Pepito];
/*
6. Entra alguien del ministerio de educación y le tenemos que dar un usuario que pueda ver en 
una sola consulta los alumnos aprobados, el año, y las asignaturas.
*/
--Se le crea un usuario
create user MinisterioEducacion FOR LOGIN Dicsys WITH DEFAULT_SCHEMA = Esquema_01;
--Se le otorga los permisos de SELECT o db_datareader para que pueda hacer consultas a las tablas
GRANT SELECT ON SCHEMA::dbo TO MinisterioEducacion;
select EA.Nombre, EA.Apellido1, EA.Apellido2, EN.Nota_Final
from Esquema_01.Alumno EA
JOIN Esquema_01.Notas EN on EA.Id = EN.Id_Alumno
WHERE Nota_Final>4;

/*
7. El usuario se queja porque las consultas sobre las tablas son lentas.
*/


/*
8. El usuario 4 (no está en la tabla de arriba), se queja porque no puede ver el resultado de la 
consulta a los alumnos del modelo, y no hay problemas en la consulta SQL
*/




