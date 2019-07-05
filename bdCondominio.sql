use master 
go 
--drop table tb_departamento
create table tb_departamento
(
Nro_departamento int 	not null,
nro_piso		int 	not null,
descripcion 	varchar(100) not null,
area_mts		float,
estado 			varchar(20)not null , --ocupado -libre
Observacion 	varchar(100), 
Precio			decimal not null
)
go 

--drop table tb_Inquilino
create table tb_Inquilino
(
id_inquilino 		int identity not null,
Nro_departamento int 	not null,
Nombre 				Varchar (50)not null,
ApePaterno 			Varchar (50)not null,
ApeMaterno 			Varchar (50)not null,
Dni					varchar(8)not null,
Direcion_inquilino	Varchar (100)not null,
cel_inqui			varchar(9)not null,
email				varchar(9),
sexo 				varchar not null,
person_emerg		Varchar (100),
nro_pers_emer		Varchar (9),
estado_inqui		varchar(20)	--vigente- retirado
)

--drop table	tb_entrevista
create table tb_entrevista
(
id_entrevista		int identity,
Pers_respo			Varchar (100),
nro_pers_vivientes	int,
titu_trab_en		Varchar (100),
nro_pers_aportan	int,
fecha_mudanza		date,
fecha_contrato		date
 )


--drop table	tb_contrato
create table tb_contrato
(
id_contrato 		int identity,
id_inquilino 		int, --ref
Nro_departamento	int,	--ref
estancia			int,	--tiempo de permanencia
fecha_contrato		date,
fecha_fincontrato	date,
monto_garantia		float not null,
tipo				varchar(20)---renovacion -inicio

)
