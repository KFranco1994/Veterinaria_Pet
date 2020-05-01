create database veterinaria;
go
use veterinaria;

CREATE TABLE tbl_ClienteFamilia (
Cliente_Id int primary key not null identity(1,1),
Cliente_ApellidoPaterno varchar(80) not null,
Cliente_CuentaBancaria int unique,
Cliente_Direccion varchar (80),
Cliente_Telefono varchar (10) );

CREATE TABLE tbl_Mascota (
Mascota_Id int primary key not null identity(1,1),
Mascota_Cliente_Id int not null,
Mascota_Alias varchar (25) not null,
Mascota_Especie varchar (50) not null,
Mascota_Raza varchar (40) not null,
Mascota_Color_pelo varchar (30), 
Mascota_Fecha_nacimiento date,
Mascota_Numero_vacunas int );

ALTER TABLE tbl_Mascota ADD FOREIGN KEY (Mascota_Cliente_Id) REFERENCES tbl_ClienteFamilia(Cliente_Id);

CREATE TABLE tbl_Historial_Mascota (
HisMacota_Mascota_Id int not null,
HisMacota_Fecha date,
HisMacota_Peso float);

ALTER TABLE tbl_Historial_Mascota 
ADD FOREIGN KEY (HisMacota_Mascota_Id) REFERENCES tbl_Mascota(Mascota_Id);

CREATE TABLE tbl_Vacunas (
Vacunas_Mascota_Id int not null,
Vacunas_Fecha date,
Vacunas_Enfermedad varchar (40),
Vacunas_Fecha_Proxima date);

ALTER TABLE tbl_Vacunas ADD FOREIGN KEY (Vacunas_Mascota_Id) References tbl_Mascota (Mascota_Id);

CREATE TABLE tbl_Personas (
Persona_Id int primary key not null,
Persona_Nombre varchar (60),
Persona_Apellido varchar (60));

GO

CREATE TABLE tbl_Relacion_personas_clientes(
RelPerCliente_Cliente_Id int not null,
RelPerCliente_Persona_Id int not null);

CREATE TABLE tbl_Tab_axiliar (
Auxiliar_Macota_Id INT,
Auxiliar_Total int);

ALTER TABLE [dbo].tbl_Tab_axiliar
ADD FOREIGN KEY (Auxiliar_Macota_Id)  REFERENCES tbl_Mascota(Mascota_Id);
GO

ALTER TABLE tbl_Relacion_personas_clientes 
ADD FOREIGN KEY (RelPerCliente_Cliente_Id) References tbl_ClienteFamilia (Cliente_Id);

ALTER TABLE tbl_Relacion_personas_clientes 
ADD FOREIGN KEY (RelPerCliente_Persona_Id) References tbl_Personas (Persona_Id);

select distinct Mascota_Especie from tbl_Mascota;
select distinct Mascota_Raza from tbl_Mascota;
select distinct Vacunas_Fecha from tbl_Vacunas;
select distinct Vacunas_Enfermedad from tbl_Vacunas;
select * from tbl_Mascota;
select * from tbl_Historial_Mascota;
select * from tbl_Vacunas;
select * from tbl_ClienteFamilia;
select * from tbl_Personas;
select * from tbl_Relacion_personas_clientes;