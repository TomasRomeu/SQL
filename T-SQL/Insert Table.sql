execute as user = 'User_01';

/* Departamento */
INSERT INTO Departamento VALUES (1, 'Inform�tica');
INSERT INTO Departamento VALUES (2, 'Matem�ticas');
INSERT INTO Departamento VALUES (3, 'Econom�a y Empresa');
INSERT INTO Departamento VALUES (4, 'Educaci�n');
INSERT INTO Departamento VALUES (5, 'Agronom�a');
INSERT INTO Departamento VALUES (6, 'Qu�mica y F�sica');
INSERT INTO Departamento VALUES (7, 'Filolog�a');
INSERT INTO Departamento VALUES (8, 'Derecho');
INSERT INTO Departamento VALUES (9, 'Biolog�a y Geolog�a');


/* Persona */
INSERT INTO Alumno VALUES (1, '89542419S', 'Juan', 'Saez', 'Vega', 'Almer�a', 'C/ Mercurio', '618253876', '1992/08/08', 'H');
INSERT INTO Alumno VALUES (2, '26902806M', 'Salvador', 'S�nchez', 'P�rez', 'Almer�a', 'C/ Real del barrio alto', '950254837', '1991/03/28', 'H');
INSERT INTO Alumno VALUES (4, '17105885A', 'Pedro', 'Heller', 'Pagac', 'Almer�a', 'C/ Estrella fugaz', NULL, '2000/10/05', 'H');
INSERT INTO Alumno VALUES (6, '04233869Y', 'Jos�', 'Koss', 'Bayer', 'Almer�a', 'C/ J�piter', '628349590', '1998/01/28', 'H');
INSERT INTO Alumno VALUES (7, '97258166K', 'Ismael', 'Strosin', 'Turcotte', 'Almer�a', 'C/ Neptuno', NULL, '1999/05/24', 'H');
INSERT INTO Alumno VALUES (9, '82842571K', 'Ram�n', 'Herzog', 'Tremblay', 'Almer�a', 'C/ Urano', '626351429', '1996/11/21', 'H');
INSERT INTO Alumno VALUES (11, '46900725E', 'Daniel', 'Herman', 'Pacocha', 'Almer�a', 'C/ Andarax', '679837625', '1997/04/26', 'H');
INSERT INTO Alumno VALUES (19, '11578526G', 'Inma', 'Lakin', 'Yundt', 'Almer�a', 'C/ Picos de Europa', '678652431', '1998/09/01', 'M');
INSERT INTO Alumno VALUES (21, '79089577Y', 'Juan', 'Guti�rrez', 'L�pez', 'Almer�a', 'C/ Los pinos', '678652431', '1998/01/01', 'H');
INSERT INTO Alumno VALUES (22, '41491230N', 'Antonio', 'Dom�nguez', 'Guerrero', 'Almer�a', 'C/ Cabo de Gata', '626652498', '1999/02/11', 'H');
INSERT INTO Alumno VALUES (23, '64753215G', 'Irene', 'Hern�ndez', 'Mart�nez', 'Almer�a', 'C/ Zapillo', '628452384', '1996/03/12', 'M');
INSERT INTO Alumno VALUES (24, '85135690V', 'Sonia', 'Gea', 'Ruiz', 'Almer�a', 'C/ Mercurio', '678812017', '1995/04/13', 'M');

/* Profesor */
INSERT INTO profesor VALUES (3, '11105554G', 'Zoe', 'Ramirez', 'Gea', 'Almer�a', 'C/ Marte', '618223876', '1979/08/19', 'M', 1);
INSERT INTO profesor VALUES (5, '38223286T', 'David', 'Schmidt', 'Fisher', 'Almer�a', 'C/ Venus', '678516294', '1978/01/19', 'H', 2);
INSERT INTO profesor VALUES (8, '79503962T', 'Cristina', 'Lemke', 'Rutherford', 'Almer�a', 'C/ Saturno', '669162534', '1977/08/21', 'M', 3);
INSERT INTO profesor VALUES (10, '61142000L', 'Esther', 'Spencer', 'Lakin', 'Almer�a', 'C/ Plut�n', NULL, '1977/05/19', 'M', 4);
INSERT INTO profesor VALUES (12, '85366986W', 'Carmen', 'Streich', 'Hirthe', 'Almer�a', 'C/ Almanzora', NULL, '1971-04-29', 'M', 4);
INSERT INTO profesor VALUES (13, '73571384L', 'Alfredo', 'Stiedemann', 'Morissette', 'Almer�a', 'C/ Guadalquivir', '950896725', '1980/02/01', 'H', 6);
INSERT INTO profesor VALUES (14, '82937751G', 'Manolo', 'Hamill', 'Kozey', 'Almer�a', 'C/ Duero', '950263514', '1977/01/02', 'H', 1);
INSERT INTO profesor VALUES (15, '80502866Z', 'Alejandro', 'Kohler', 'Schoen', 'Almer�a', 'C/ Tajo', '668726354', '1980/03/14', 'H', 2);
INSERT INTO profesor VALUES (16, '10485008K', 'Antonio', 'Fahey', 'Considine', 'Almer�a', 'C/ Sierra de los Filabres', NULL, '1982/03/18', 'H', 3);
INSERT INTO profesor VALUES (17, '85869555K', 'Guillermo', 'Ruecker', 'Upton', 'Almer�a', 'C/ Sierra de G�dor', NULL, '1973/05/05', 'H', 4);
INSERT INTO profesor VALUES (18, '04326833G', 'Micaela', 'Monahan', 'Murray', 'Almer�a', 'C/ Veleta', '662765413', '1976/02/25', 'H', 5);
INSERT INTO profesor VALUES (20, '79221403L', 'Francesca', 'Schowalter', 'Muller', 'Almer�a', 'C/ Quinto pino', NULL, '1980/10/31', 'H', 6);
INSERT INTO profesor VALUES (21, '13175769N', 'Pepe', 'S�nchez', 'Ruiz', 'Almer�a', 'C/ Quinto pino', NULL, '1980/10/16', 'H', 1);
INSERT INTO profesor VALUES (22, '98816696W', 'Juan', 'Guerrero', 'Mart�nez', 'Almer�a', 'C/ Quinto pino', NULL, '1980/11/21', 'H', 1);
INSERT INTO profesor VALUES (23, '77194445M', 'Mar�a', 'Dom�nguez', 'Hern�ndez', 'Almer�a', 'C/ Quinto pino', NULL, '1980/12/13', 'M', 2);

/* Grado */
INSERT INTO grado VALUES (1, 'Grado en Ingenier�a Agr�cola (Plan 2015)');
INSERT INTO grado VALUES (2, 'Grado en Ingenier�a El�ctrica (Plan 2014)');
INSERT INTO grado VALUES (3, 'Grado en Ingenier�a Electr�nica Industrial (Plan 2010)');
INSERT INTO grado VALUES (4, 'Grado en Ingenier�a Inform�tica (Plan 2015)');
INSERT INTO grado VALUES (5, 'Grado en Ingenier�a Mec�nica (Plan 2010)');
INSERT INTO grado VALUES (6, 'Grado en Ingenier�a Qu�mica Industrial (Plan 2010)');
INSERT INTO grado VALUES (7, 'Grado en Biotecnolog�a (Plan 2015)');
INSERT INTO grado VALUES (8, 'Grado en Ciencias Ambientales (Plan 2009)');
INSERT INTO grado VALUES (9, 'Grado en Matem�ticas (Plan 2010)');
INSERT INTO grado VALUES (10, 'Grado en Qu�mica (Plan 2009)');

/* Asignatura */
INSERT INTO Asignatura VALUES (1, '�lgegra lineal y matem�tica discreta', 6, 'b�sica', 1, 1, NULL, 4);
INSERT INTO Asignatura VALUES (2, 'C�lculo', 6, 'b�sica', 1, 1, NULL, 4);
INSERT INTO Asignatura VALUES (3, 'F�sica para inform�tica', 6, 'b�sica', 1, 1, NULL, 4);
INSERT INTO Asignatura VALUES (4, 'Introducci�n a la programaci�n', 6, 'b�sica', 1, 1, NULL, 4);
INSERT INTO Asignatura VALUES (5, 'Organizaci�n y gesti�n de empresas', 6, 'b�sica', 1, 1, NULL, 4);
INSERT INTO Asignatura VALUES (6, 'Estad�stica', 6, 'b�sica', 1, 2, NULL, 4);
INSERT INTO Asignatura VALUES (7, 'Estructura y tecnolog�a de computadores', 6, 'b�sica', 1, 2, NULL, 4);
INSERT INTO Asignatura VALUES (8, 'Fundamentos de electr�nica', 6, 'b�sica', 1, 2, NULL, 4);
INSERT INTO Asignatura VALUES (9, 'L�gica y algor�tmica', 6, 'b�sica', 1, 2, NULL, 4);
INSERT INTO Asignatura VALUES (10, 'Metodolog�a de la programaci�n', 6, 'b�sica', 1, 2, NULL, 4);
INSERT INTO Asignatura VALUES (11, 'Arquitectura de Computadores', 6, 'b�sica', 2, 1, 3, 4);
INSERT INTO Asignatura VALUES (12, 'Estructura de Datos y Algoritmos I', 6, 'obligatoria', 2, 1, 3, 4);
INSERT INTO Asignatura VALUES (13, 'Ingenier�a del Software', 6, 'obligatoria', 2, 1, 14, 4);
INSERT INTO Asignatura VALUES (14, 'Sistemas Inteligentes', 6, 'obligatoria', 2, 1, 3, 4);
INSERT INTO Asignatura VALUES (15, 'Sistemas Operativos', 6, 'obligatoria', 2, 1, 14, 4);
INSERT INTO Asignatura VALUES (16, 'Bases de Datos', 6, 'b�sica', 2, 2, 14, 4);
INSERT INTO Asignatura VALUES (17, 'Estructura de Datos y Algoritmos II', 6, 'obligatoria', 2, 2, 14, 4);
INSERT INTO Asignatura VALUES (18, 'Fundamentos de Redes de Computadores', 6 ,'obligatoria', 2, 2, 3, 4);
INSERT INTO Asignatura VALUES (19, 'Planificaci�n y Gesti�n de Proyectos Inform�ticos', 6, 'obligatoria', 2, 2, 3, 4);
INSERT INTO Asignatura VALUES (20, 'Programaci�n de Servicios Software', 6, 'obligatoria', 2, 2, 14, 4);
INSERT INTO Asignatura VALUES (21, 'Desarrollo de interfaces de usuario', 6, 'obligatoria', 3, 1, 14, 4);
INSERT INTO Asignatura VALUES (22, 'Ingenier�a de Requisitos', 6, 'optativa', 3, 1, NULL, 4);
INSERT INTO Asignatura VALUES (23, 'Integraci�n de las Tecnolog�as de la Informaci�n en las Organizaciones', 6, 'optativa', 3, 1, NULL, 4);
INSERT INTO Asignatura VALUES (24, 'Modelado y Dise�o del Software 1', 6, 'optativa', 3, 1, NULL, 4);
INSERT INTO Asignatura VALUES (25, 'Multiprocesadores', 6, 'optativa', 3, 1, NULL, 4);
INSERT INTO Asignatura VALUES (26, 'Seguridad y cumplimiento normativo', 6, 'optativa', 3, 1, NULL, 4);
INSERT INTO Asignatura VALUES (27, 'Sistema de Informaci�n para las Organizaciones', 6, 'optativa', 3, 1, NULL, 4); 
INSERT INTO Asignatura VALUES (28, 'Tecnolog�as web', 6, 'optativa', 3, 1, NULL, 4);
INSERT INTO Asignatura VALUES (29, 'Teor�a de c�digos y criptograf�a', 6, 'optativa', 3, 1, NULL, 4);
INSERT INTO Asignatura VALUES (30, 'Administraci�n de bases de datos', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (31, 'Herramientas y M�todos de Ingenier�a del Software', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (32, 'Inform�tica industrial y rob�tica', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (33, 'Ingenier�a de Sistemas de Informaci�n', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (34, 'Modelado y Dise�o del Software 2', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (35, 'Negocio Electr�nico', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (36, 'Perif�ricos e interfaces', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (37, 'Sistemas de tiempo real', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (38, 'Tecnolog�as de acceso a red', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (39, 'Tratamiento digital de im�genes', 6, 'optativa', 3, 2, NULL, 4);
INSERT INTO Asignatura VALUES (40, 'Administraci�n de redes y sistemas operativos', 6, 'optativa', 4, 1, NULL, 4);
INSERT INTO Asignatura VALUES (41, 'Almacenes de Datos', 6, 'optativa', 4, 1, NULL, 4);
INSERT INTO Asignatura VALUES (42, 'Fiabilidad y Gesti�n de Riesgos', 6, 'optativa', 4, 1, NULL, 4);
INSERT INTO Asignatura VALUES (43, 'L�neas de Productos Software', 6, 'optativa', 4, 1, NULL, 4);
INSERT INTO Asignatura VALUES (44, 'Procesos de Ingenier�a del Software 1', 6, 'optativa', 4, 1, NULL, 4);
INSERT INTO Asignatura VALUES (45, 'Tecnolog�as multimedia', 6, 'optativa', 4, 1, NULL, 4);
INSERT INTO Asignatura VALUES (46, 'An�lisis y planificaci�n de las TI', 6, 'optativa', 4, 2, NULL, 4);
INSERT INTO Asignatura VALUES (47, 'Desarrollo R�pido de Aplicaciones', 6, 'optativa', 4, 2, NULL, 4);
INSERT INTO Asignatura VALUES (48, 'Gesti�n de la Calidad y de la Innovaci�n Tecnol�gica', 6, 'optativa', 4, 2, NULL, 4);
INSERT INTO Asignatura VALUES (49, 'Inteligencia del Negocio', 6, 'optativa', 4, 2, NULL, 4);
INSERT INTO Asignatura VALUES (50, 'Procesos de Ingenier�a del Software 2', 6, 'optativa', 4, 2, NULL, 4);
INSERT INTO Asignatura VALUES (51, 'Seguridad Inform�tica', 6, 'optativa', 4, 2, NULL, 4);
INSERT INTO Asignatura VALUES (52, 'Biologia celular', 6, 'b�sica', 1, 1, NULL, 7);
INSERT INTO Asignatura VALUES (53, 'F�sica', 6, 'b�sica', 1, 1, NULL, 7);
INSERT INTO Asignatura VALUES (54, 'Matem�ticas I', 6, 'b�sica', 1, 1, NULL, 7);
INSERT INTO Asignatura VALUES (55, 'Qu�mica general', 6, 'b�sica', 1, 1, NULL, 7);
INSERT INTO Asignatura VALUES (56, 'Qu�mica org�nica', 6, 'b�sica', 1, 1, NULL, 7);
INSERT INTO Asignatura VALUES (57, 'Biolog�a vegetal y animal', 6, 'b�sica', 1, 2, NULL, 7);
INSERT INTO Asignatura VALUES (58, 'Bioqu�mica', 6, 'b�sica', 1, 2, NULL, 7);
INSERT INTO Asignatura VALUES (59, 'Gen�tica', 6, 'b�sica', 1, 2, NULL, 7);
INSERT INTO Asignatura VALUES (60, 'Matem�ticas II', 6, 'b�sica', 1, 2, NULL, 7);
INSERT INTO Asignatura VALUES (61, 'Microbiolog�a', 6, 'b�sica', 1, 2, NULL, 7);
INSERT INTO Asignatura VALUES (62, 'Bot�nica agr�cola', 6, 'obligatoria', 2, 1, NULL, 7);
INSERT INTO Asignatura VALUES (63, 'Fisiolog�a vegetal', 6, 'obligatoria', 2, 1, NULL, 7);
INSERT INTO Asignatura VALUES (64, 'Gen�tica molecular', 6, 'obligatoria', 2, 1, NULL, 7);
INSERT INTO Asignatura VALUES (65, 'Ingenier�a bioqu�mica', 6, 'obligatoria', 2, 1, NULL, 7);
INSERT INTO Asignatura VALUES (66, 'Termodin�mica y cin�tica qu�mica aplicada', 6, 'obligatoria', 2, 1, NULL, 7);
INSERT INTO Asignatura VALUES (67, 'Biorreactores', 6, 'obligatoria', 2, 2, NULL, 7);
INSERT INTO Asignatura VALUES (68, 'Biotecnolog�a microbiana', 6, 'obligatoria', 2, 2, NULL, 7);
INSERT INTO Asignatura VALUES (69, 'Ingenier�a gen�tica', 6, 'obligatoria', 2, 2, NULL, 7);
INSERT INTO Asignatura VALUES (70, 'Inmunolog�a', 6, 'obligatoria', 2, 2, NULL, 7);
INSERT INTO Asignatura VALUES (71, 'Virolog�a', 6, 'obligatoria', 2, 2, NULL, 7);
INSERT INTO Asignatura VALUES (72, 'Bases moleculares del desarrollo vegetal', 4.5, 'obligatoria', 3, 1, NULL, 7);
INSERT INTO Asignatura VALUES (73, 'Fisiolog�a animal', 4.5, 'obligatoria', 3, 1, NULL, 7);
INSERT INTO Asignatura VALUES (74, 'Metabolismo y bios�ntesis de biomol�culas', 6, 'obligatoria', 3, 1, NULL, 7);
INSERT INTO Asignatura VALUES (75, 'Operaciones de separaci�n', 6, 'obligatoria', 3, 1, NULL, 7);
INSERT INTO Asignatura VALUES (76, 'Patolog�a molecular de plantas', 4.5, 'obligatoria', 3, 1, NULL, 7);
INSERT INTO Asignatura VALUES (77, 'T�cnicas instrumentales b�sicas', 4.5, 'obligatoria', 3, 1, NULL, 7);
INSERT INTO Asignatura VALUES (78, 'Bioinform�tica', 4.5, 'obligatoria', 3, 2, NULL, 7);
INSERT INTO Asignatura VALUES (79, 'Biotecnolog�a de los productos hortofrut�culas', 4.5, 'obligatoria', 3, 2, NULL, 7);
INSERT INTO Asignatura VALUES (80, 'Biotecnolog�a vegetal', 6, 'obligatoria', 3, 2, NULL, 7);
INSERT INTO Asignatura VALUES (81, 'Gen�mica y prote�mica', 4.5, 'obligatoria', 3, 2, NULL, 7);
INSERT INTO Asignatura VALUES (82, 'Procesos biotecnol�gicos', 6, 'obligatoria', 3, 2, NULL, 7);
INSERT INTO Asignatura VALUES (83, 'T�cnicas instrumentales avanzadas', 4.5, 'obligatoria', 3, 2, NULL, 7);

/* Curso escolar */
INSERT INTO curso_escolar VALUES (1, 2014, 2015);
INSERT INTO curso_escolar VALUES (2, 2015, 2016);
INSERT INTO curso_escolar VALUES (3, 2016, 2017);
INSERT INTO curso_escolar VALUES (4, 2017, 2018);

/* Alumno se matricula en asignatura */
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 1, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 2, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 3, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 4, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 5, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 6, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 7, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 8, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 9, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 10, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 1, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 2, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 3, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 1, 3);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 2, 3);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 3, 3);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 1, 4);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 2, 4);
INSERT INTO alumno_se_matricula_asignatura VALUES (1, 3, 4);
INSERT INTO alumno_se_matricula_asignatura VALUES (2, 1, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (2, 2, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (2, 3, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 1, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 2, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 3, 1);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 1, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 2, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 3, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 4, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 5, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 6, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 7, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 8, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 9, 2);
INSERT INTO alumno_se_matricula_asignatura VALUES (4, 10, 2);

--INSERTAR 10 ALUMNOS--
INSERT INTO Alumno VALUES (25, '12345678W', 'Juan2', 'Saes', 'Vega', 'Almer�a', 'C/ Mercurio', '618253876', '1992/08/08', 'H');
INSERT INTO Alumno VALUES (26, '13579246Q', 'Salvador2', 'S�nches', 'P�rez', 'Almer�a', 'C/ Real del barrio alto', '950254837', '1991/03/28', 'H');
INSERT INTO Alumno VALUES (27, '13516843A', 'Pedro2', 'Haller', 'Pagac', 'Almer�a', 'C/ Estrella fugaz', NULL, '2000/10/05', 'H');
INSERT INTO Alumno VALUES (28, '98436513B', 'Jos�2', 'Kross', 'Bayer', 'Almer�a', 'C/ J�piter', '628349590', '1998/01/28', 'H');
INSERT INTO Alumno VALUES (29, '13549879C', 'Ismael2', 'Strosinn', 'Turcotte', 'Almer�a', 'C/ Neptuno', NULL, '1999/05/24', 'H');
INSERT INTO Alumno VALUES (30, '98753210D', 'Ram�n2', 'Herzegovir', 'Tremblay', 'Almer�a', 'C/ Urano', '626351429', '1996/11/21', 'H');
INSERT INTO Alumno VALUES (31, '9876542Z', 'Daniel2', 'HermanUCL', 'Pacocha', 'Almer�a', 'C/ Andarax', '679837625', '1997/04/26', 'H');
INSERT INTO Alumno VALUES (32, '3210546U', 'Inma2', 'Lanin', 'Yundt', 'Almer�a', 'C/ Picos de Europa', '678652431', '1998/09/01', 'M');
INSERT INTO Alumno VALUES (33, '9875423L', 'Juan3', 'Guti�rres', 'L�pez', 'Almer�a', 'C/ Los pinos', '678652431', '1998/01/01', 'H');
INSERT INTO Alumno VALUES (34, '9875432Q', 'Antonio2', 'Dom�ngues', 'Guerrero', 'Almer�a', 'C/ Cabo de Gata', '626652498', '1999/02/11', 'H');

