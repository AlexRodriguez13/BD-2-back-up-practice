create database Universidad
use Universidad

create table Estudiante(
IdEstudiante int,
primernombre varchar (50)
)

insert into Estudiante values (0,'Ana')
select *from Estudiante

-- Full Backup base de datos Universidad
backup database Universidad
to disk= 'D:\Base de datos\Respaldos\Universidad.bak'
with 
name = 'Respaldo full 1',
description ='Copia completa de archivos de BD'

--Respaldo diferencial de base de datos
backup database Universidad
to disk= 'D:\Base de datos\Respaldos\Universidad.bak'
with 
name = 'Respaldo Diferencial 1',
description ='Copia completa de archivos de BD',
differential 

insert into Estudiante values (1, 'Pedro')
--Generando segundo diferencial

backup database Universidad
to disk= 'D:\Base de datos\Respaldos\Universidad.bak'
with 
name = 'Respaldo Diferencial 2',
description ='Copia completa de archivos de BD',
differential 

insert into Estudiante values (2, 'Juan')
--Generando tercer diferencial

backup database Universidad
to disk= 'D:\Base de datos\Respaldos\Universidad.bak'
with 
name = 'Respaldo Diferencial 3',
description ='Copia completa de archivos de BD',
differential 

--Visualizando los archivos de respaldos de la base de datos 

restore headeronly
from disk= 'D:\Base de datos\Respaldos\Universidad.bak'

--Generar un backup fullcomprimido
backup database Universidad
to disk= 'D:\Base de datos\Respaldos\UniversidadComprimido.bak'
with 
name = 'Full Comprimido',
description ='Copia completa comprimida de archivos de BD',
compression 

--Visualizar el archivo de respaldo comprimido
restore headeronly
from disk= 'D:\Base de datos\Respaldos\UniversidadComprimido.bak'

use master
drop database Universidad

--Restaurar la bd Ubniversidad
restore headeronly
from disk = 'D:\Base de datos\Respaldos\Universidad.bak'

restore database Universidad
from disk = 'D:\Base de datos\Respaldos\Universidad.bak'
with 
file =7,
recovery

use Universidad
select *from Estudiante


 --Respaldo del registro de transacciones SQL SERVER 
 sp_helpdb Universidad

backup log Universidad
to disk = 'D:\Base de datos\Respaldos\Universidad.bak'

restore headeronly
from disk = 'D:\Base de datos\Respaldos\Universidad.bak'

insert into Estudiante values (3, 'Maria')

backup log Universidad
to disk = 'D:\Base de datos\Respaldos\Universidad.bak'

insert into Estudiante values (4, 'Mariauwu')
select *from Estudiante

backup log Universidad
to disk = 'D:\Base de datos\Respaldos\Universidad.bak'
