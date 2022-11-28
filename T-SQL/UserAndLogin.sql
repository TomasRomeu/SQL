USE Dicsys
GO
CREATE LOGIN User_01 with password = '1234';
use Dicsys
go
CREATE LOGIN User_02 with password= '5678';

use Dicsys
go
create login User_03 with password = '0416';


USE Dicsys
go
create user User_01 FOR LOGIN User_01 WITH DEFAULT_SCHEMA = Esquema_01;

USE Dicsys
go
create user User_02 FOR LOGIN User_02 WITH DEFAULT_SCHEMA = Esquema_02;

USE Dicsys
go
create user User_03 FOR LOGIN User_03 WITH DEFAULT_SCHEMA = Esquema_03;






