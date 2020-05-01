use veterinaria;

--Procedimiento almacenado para dar de alta a un cliente (familia)--
create procedure insertaCliente_fam
  @apellido_paterno varchar (80),
  @cuenta_bancaria int,
  @direccion varchar (80),
  @telefono varchar (10) 
as
insert into tbl_ClienteFamilia (Cliente_ApellidoPaterno, Cliente_CuentaBancaria, Cliente_Direccion, Cliente_Telefono)
values (@apellido_paterno,@cuenta_bancaria,@direccion,@telefono);

exec insertaCliente_fam 
@apellido_paterno = 'Dominguez',
@cuenta_bancaria = 1,
@direccion = 'Localidad Guadalupe Victoria',
@telefono = '7751514469'

exec insertaCliente_fam
@apellido_paterno = 'Riveros',
@cuenta_bancaria = '2',
@direccion = 'Localidad Santa Rita',
@telefono = '7752044308'

exec insertaCliente_fam
@apellido_paterno = 'Chavez',
@cuenta_bancaria = '3',
@direccion = 'Cuautepec de Hinojosa',
@telefono = '7751680273'

exec insertaCliente_fam
@apellido_paterno = 'Dominguez',
@cuenta_bancaria = '4',
@direccion = 'Localidad Santa Elena Paliseca',
@telefono = '7751286685'

exec insertaCliente_fam
@apellido_paterno = 'Cenobio',
@cuenta_bancaria = '5',
@direccion = 'Localidad San Juan Hueyepan',
@telefono = '7751286685'

exec insertaCliente_fam
@apellido_paterno = 'Pacheco',
@cuenta_bancaria = '6',
@direccion = 'Localidad Buen Pais',
@telefono = '7751306541'

exec insertaCliente_fam
@apellido_paterno = 'Terrazas',
@cuenta_bancaria = '7',
@direccion = 'Colonia Francisco I. Madero',
@telefono = '7751089746'

exec insertaCliente_fam
@apellido_paterno = 'Franco',
@cuenta_bancaria = '8',
@direccion = 'Localidad Tecocomulco de Juarez',
@telefono = '7757840645'

--Procedimiento almacenado para dar de alta a los pacientes (mascotas)--
create procedure insertaMascotas
  @idcliente int,
  @alias varchar(25),
  @especie varchar (50),
  @raza varchar (40),
  @color_pelo varchar (30),
  @fecha_nacimiento date,
  @numero_vacunas int
as
insert into tbl_Mascota (Mascota_Cliente_Id, Mascota_Alias, Mascota_Especie, Mascota_Raza, Mascota_Color_pelo,Mascota_Fecha_nacimiento, Mascota_Numero_vacunas)
values (@idcliente,@alias,@especie, @raza, @color_pelo, @fecha_nacimiento, @numero_vacunas);

exec insertaMascotas
@idcliente = 1,
@alias = 'blue',
@especie = 'perro',
@raza = 'ladrador',
@color_pelo = 'negro con beige',
@fecha_nacimiento = '2014-12-01',
@numero_vacunas = 3

exec insertaMascotas
@idcliente = 1,
@alias = 'turuleca',
@especie = 'gallina',
@raza = 'calzada holandesa',
@color_pelo = 'beige con café y negro',
@fecha_nacimiento = '2015-01-01',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 1,
@alias = 'toto',
@especie = 'gallo',
@raza = 'kelso',
@color_pelo = 'cafe con negro',
@fecha_nacimiento = '2015-01-01',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 2,
@alias = 'tadeus',
@especie = 'perro',
@raza = 'pitbull',
@color_pelo = 'café',
@fecha_nacimiento = '2018-01-07',
@numero_vacunas = 2

exec insertaMascotas
@idcliente = 2,
@alias = 'pepe',
@especie = 'gato',
@raza = 'munchkin',
@color_pelo = 'gris oscuro',
@fecha_nacimiento = '2017-04-11',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 2,
@alias = 'chato',
@especie = 'perico',
@raza = 'loro mexicano',
@color_pelo = 'verde',
@fecha_nacimiento = '2016-09-27',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 3,
@alias = 'asley',
@especie = 'perro',
@raza = 'chihuahua',
@color_pelo = 'chocolate',
@fecha_nacimiento = '2018-05-10',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 3,
@alias = 'paco',
@especie = 'gato',
@raza = 'persa',
@color_pelo = 'crema con blanco',
@fecha_nacimiento = '2019-01-01',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 3,
@alias = 'dani',
@especie = 'gallina',
@raza = 'calzada holandesa',
@color_pelo = 'beige con cafe y negro',
@fecha_nacimiento = '2017-12-12',
@numero_vacunas = 2


exec insertaMascotas
@idcliente = 4,
@alias = 'peluchin',
@especie = 'perro',
@raza = 'bichon maltes',
@color_pelo = 'blanco',
@fecha_nacimiento = '2008-05-20',
@numero_vacunas = 15

exec insertaMascotas
@idcliente = 4,
@alias = 'fito',
@especie = 'perro',
@raza = 'golder retriever',
@color_pelo = 'beige',
@fecha_nacimiento = '2015-11-06',
@numero_vacunas = 5

exec insertaMascotas
@idcliente = 4,
@alias = 'rayo',
@especie = 'gato',
@raza = 'angora turco',
@color_pelo = 'blanco',
@fecha_nacimiento = '2018-05-30',
@numero_vacunas = 2

exec insertaMascotas
@idcliente = 5,
@alias = 'hachiko',
@especie = 'perro',
@raza = 'samoyedo',
@color_pelo = 'blanco',
@fecha_nacimiento = '2013-06-11',
@numero_vacunas = 7

exec insertaMascotas
@idcliente = 5,
@alias = 'lola',
@especie = 'perro',
@raza = 'golden retriever',
@color_pelo = 'beige',
@fecha_nacimiento = '2018-04-18',
@numero_vacunas = 3

exec insertaMascotas
@idcliente = 5,
@alias = 'lorenza',
@especie = 'gato',
@raza = 'somali',
@color_pelo = 'cafe claro con beige',
@fecha_nacimiento = '2019-07-01',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 6,
@alias = 'pancha',
@especie = 'gallina',
@raza = 'calzada holandesa',
@color_pelo = 'beige con cafe y negro',
@fecha_nacimiento = '2018-04-02',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 6,
@alias = 'lencho',
@especie = 'perro',
@raza = 'bulldog frances',
@color_pelo = 'gris oscuro',
@fecha_nacimiento = '2012-06-25',
@numero_vacunas = 9

exec insertaMascotas
@idcliente = 6,
@alias = 'masha',
@especie = 'perro',
@raza = 'boxer',
@color_pelo = 'cafe claro con beige',
@fecha_nacimiento = '2017-09-01',
@numero_vacunas = 3

exec insertaMascotas
@idcliente = 7,
@alias = 'manolo',
@especie = 'gato',
@raza = 'angora turco',
@color_pelo = 'blanco',
@fecha_nacimiento = '2019-02-01',
@numero_vacunas = 1

exec insertaMascotas
@idcliente = 7,
@alias = 'panchito',
@especie = 'perro',
@raza = 'ladrador retriever',
@color_pelo = 'beige',
@fecha_nacimiento = '2016-02-19',
@numero_vacunas = 4

exec insertaMascotas
@idcliente = 7,
@alias = 'lucrecia',
@especie = 'gallina',
@raza = 'calzada holandesa',
@color_pelo = 'beige con cafe y negro',
@fecha_nacimiento = '2016-06-28',
@numero_vacunas = 4

exec insertaMascotas
@idcliente = 8,
@alias = 'panchito',
@especie = 'loro',
@raza = 'loro mexicano',
@color_pelo = 'verde',
@fecha_nacimiento = '2014-09-01',
@numero_vacunas = 5

exec insertaMascotas
@idcliente = 8,
@alias = 'anastacio',
@especie = 'perro',
@raza = 'ponter ingles',
@color_pelo = 'cafe claro con beige',
@fecha_nacimiento = '2018-02-05',
@numero_vacunas = 3

exec insertaMascotas
@idcliente = 8,
@alias = 'lolo',
@especie = 'perro',
@raza = 'beagle',
@color_pelo = 'cafe claro con beige y negro',
@fecha_nacimiento = '2017-07-03',
@numero_vacunas = 4

--Procedimiento almacenado para registrar el historial medico de las mascotas--
create procedure generarHistorial
 @idmascota int,
 @fecha date,
 @peso float
as
insert into tbl_Historial_Mascota (HisMacota_Mascota_Id, HisMacota_Fecha, HisMacota_Peso)
values (@idmascota, @fecha, @peso);

exec generarHistorial
 @idmascota = 1,
 @fecha = '2019-09-24',
 @peso = 60.20

exec generarHistorial
 @idmascota = 2,
 @fecha = '2019-09-26',
 @peso = 64.12
 
 exec generarHistorial
 @idmascota = 3,
 @fecha = '2019-09-26',
 @peso = 59.45

 exec generarHistorial
 @idmascota = 4,
 @fecha = '2019-09-26',
 @peso = 59.45

  exec generarHistorial
 @idmascota = 5,
 @fecha = '2019-09-26',
 @peso = 55.30

 exec generarHistorial
 @idmascota = 6,
 @fecha = '2019-09-26',
 @peso = 37.14

 exec generarHistorial
 @idmascota = 7,
 @fecha = '2019-09-26',
 @peso = 2.65

 exec generarHistorial
 @idmascota = 8,
 @fecha = '2019-09-26',
 @peso = 4.25

 exec generarHistorial
 @idmascota = 9,
 @fecha = '2019-09-26',
 @peso = 0.815

 exec generarHistorial
 @idmascota = 10,
 @fecha = '2019-09-26',
 @peso = 26.78

 exec generarHistorial
 @idmascota = 11,
 @fecha = '2019-09-26',
 @peso = 34.83

 exec generarHistorial
 @idmascota = 12,
 @fecha = '2019-09-26',
 @peso = 4.79

 exec generarHistorial
 @idmascota = 13,
 @fecha = '2019-09-26',
 @peso = 31.48

 exec generarHistorial
 @idmascota = 14,
 @fecha = '2019-09-26',
 @peso = 25.13

 exec generarHistorial
 @idmascota = 15,
 @fecha = '2019-09-26',
 @peso = 2.18

 exec generarHistorial
 @idmascota = 16,
 @fecha = '2019-09-26',
 @peso = 3.54

 exec generarHistorial
 @idmascota = 17,
 @fecha = '2019-09-26',
 @peso = 24.88

 exec generarHistorial
 @idmascota = 18,
 @fecha = '2019-09-26',
 @peso = 26.11

 exec generarHistorial
 @idmascota = 19,
 @fecha = '2019-09-26',
 @peso = 3.89

 exec generarHistorial
 @idmascota = 20,
 @fecha = '2019-09-26',
 @peso = 34.13

 exec generarHistorial
 @idmascota = 21,
 @fecha = '2019-09-26',
 @peso = 1.45

 exec generarHistorial
 @idmascota = 22,
 @fecha = '2019-09-26',
 @peso = 35.41

 exec generarHistorial
 @idmascota = 23,
 @fecha = '2019-09-26',
 @peso = 20.00

 exec generarHistorial
 @idmascota = 24,
 @fecha = '2019-09-26',
 @peso = 10.87


--Procedimiento almacenado para anotar las vacunas aplicadas a los pacientes (mascotas)--

create procedure registrarVacunas
 @idmascota int,
 @fecha date,
 @enfermedad varchar (40),
 @fecha_proxima date
 as
 insert into tbl_Vacunas (Vacunas_Mascota_Id, Vacunas_Fecha, Vacunas_Enfermedad, Vacunas_Fecha_Proxima)
 values (@idmascota, @fecha, @enfermedad, @fecha_proxima);

 exec registrarVacunas
  @idmascota = 1,
  @fecha = '2019-09-24',
  @enfermedad = 'rabia',
  @fecha_proxima = '2019-10-12'

  exec registrarVacunas
  @idmascota = 2,
  @fecha = '2019-09-26',
  @enfermedad = 'diarrea',
  @fecha_proxima = '2019-10-14'

    exec registrarVacunas
  @idmascota = 3,
  @fecha = '2019-09-26',
  @enfermedad = 'fiebre',
  @fecha_proxima = '2019-10-14'
  
   exec registrarVacunas
  @idmascota = 4,
  @fecha = '2019-09-26',
  @enfermedad = 'fiebre',
  @fecha_proxima = '2019-10-14'

   exec registrarVacunas
  @idmascota = 5,
  @fecha = '2019-09-26',
  @enfermedad = 'otitis',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 6,
  @fecha = '2019-09-26',
  @enfermedad = 'pulmonia',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 7,
  @fecha = '2019-09-26',
  @enfermedad = 'sarna',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 8,
  @fecha = '2019-09-26',
  @enfermedad = 'peritonitis',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 9,
  @fecha = '2019-09-26',
  @enfermedad = 'bronquitis infecciosa',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 10,
  @fecha = '2019-09-26',
  @enfermedad = 'artrosis',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 11,
  @fecha = '2019-09-26',
  @enfermedad = 'sarna',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 12,
  @fecha = '2019-09-26',
  @enfermedad = 'peritonitis',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 13,
  @fecha = '2019-09-26',
  @enfermedad = 'sarna',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 14,
  @fecha = '2019-09-26',
  @enfermedad = 'problemas gastointestinales',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 15,
  @fecha = '2019-09-26',
  @enfermedad = 'rabia',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 16,
  @fecha = '2019-09-26',
  @enfermedad = 'coriza infecciosa',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 17,
  @fecha = '2019-09-26',
  @enfermedad = 'peritonitis',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 18,
  @fecha = '2019-09-26',
  @enfermedad = 'parvovirus',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 19,
  @fecha = '2019-09-26',
  @enfermedad = 'sarna',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 20,
  @fecha = '2019-09-26',
  @enfermedad = 'moquillo',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 21,
  @fecha = '2019-09-26',
  @enfermedad = 'colera aviar',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 22,
  @fecha = '2019-09-26',
  @enfermedad = 'salmonelosis',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 23,
  @fecha = '2019-09-26',
  @enfermedad = 'moquillo',
  @fecha_proxima = '2019-10-14'

  exec registrarVacunas
  @idmascota = 24,
  @fecha = '2019-09-26',
  @enfermedad = 'otitis',
  @fecha_proxima = '2019-10-14'

 --Procedimiento almacenado para dar de alta a personas--

 create procedure registrarPersonas
  @id_persona int,
  @nombre_persona varchar (60),
  @apellido_persona varchar (60)
  as
  insert into tbl_Personas (Persona_Id, Persona_Nombre, Persona_Apellido)
  values (@id_persona, @nombre_persona, @apellido_persona);

  exec registrarPersonas
   @id_persona = 1,
   @nombre_persona = 'Pedro',
   @apellido_persona = 'Dominguez'

   exec registrarPersonas
   @id_persona = 2,
   @nombre_persona = 'Maria Concepcion',
   @apellido_persona = 'Franco'

   exec registrarPersonas
   @id_persona = 3,
   @nombre_persona = 'Pedro',
   @apellido_persona = 'DominguezF'

   exec registrarPersonas
   @id_persona = 4,
   @nombre_persona = 'Marco Antonio',
   @apellido_persona = 'Riveros'

   exec registrarPersonas
   @id_persona = 5,
   @nombre_persona = 'Regina',
   @apellido_persona = 'Vazquez'

   exec registrarPersonas
   @id_persona = 6,
   @nombre_persona = 'Elizabeth',
   @apellido_persona = 'RiverosV'

   exec registrarPersonas
   @id_persona = 7,
   @nombre_persona = 'Luis Eduardo',
   @apellido_persona = 'Chavez'

   exec registrarPersonas
   @id_persona =8,
   @nombre_persona = 'Juan Manuel',
   @apellido_persona = 'Chavez'

   exec registrarPersonas
   @id_persona = 9,
   @nombre_persona = 'Mayra Joseline',
   @apellido_persona = 'Chavez'
   
     exec registrarPersonas
   @id_persona = 10,
   @nombre_persona = 'Gerardo',
   @apellido_persona = 'Dominguez'

   exec registrarPersonas
   @id_persona =11,
   @nombre_persona = 'Angelica',
   @apellido_persona = 'Perez'

   exec registrarPersonas
   @id_persona = 12,
   @nombre_persona = 'Juan Diego',
   @apellido_persona = 'DominguezP'
   
       exec registrarPersonas
   @id_persona = 13,
   @nombre_persona = 'Angel Daniel',
   @apellido_persona = 'Cenobio'

   exec registrarPersonas
   @id_persona =14,
   @nombre_persona = 'Maripaz',
   @apellido_persona = 'Garrido'

   exec registrarPersonas
   @id_persona = 15,
   @nombre_persona = 'Jose Arturo',
   @apellido_persona = 'CenobioG'
   
       exec registrarPersonas
   @id_persona = 16,
   @nombre_persona = 'Celestino',
   @apellido_persona = 'Pacheco'

   exec registrarPersonas
   @id_persona =17,
   @nombre_persona = 'Maria de los Angeles',
   @apellido_persona = 'Arandas'

   exec registrarPersonas
   @id_persona = 18,
   @nombre_persona = 'Jessica',
   @apellido_persona = 'PachecoA'
   
       exec registrarPersonas
   @id_persona = 19,
   @nombre_persona = 'Ramiro',
   @apellido_persona = 'Terrazas'

   exec registrarPersonas
   @id_persona =20,
   @nombre_persona = 'Karen',
   @apellido_persona = 'Avlia'

   exec registrarPersonas
   @id_persona = 21,
   @nombre_persona = 'Alejandra',
   @apellido_persona = 'TerrazasA'
   
       exec registrarPersonas
   @id_persona = 22,
   @nombre_persona = 'Eluterio',
   @apellido_persona = 'Franco'

   exec registrarPersonas
   @id_persona =23,
   @nombre_persona = 'Geraldine',
   @apellido_persona = 'Solis'

   exec registrarPersonas
   @id_persona = 24,
   @nombre_persona = 'Mariana Joseline',
   @apellido_persona = 'FrancoS'
   
   
  --Procedimiento almacenado para registrar la relación Personas-Clientes--

  create procedure registrarRelPersonaCliente
  @id_cliente int,
  @id_persona int
  as
  insert into tbl_Relacion_personas_clientes (RelPerCliente_Cliente_Id, RelPerCliente_Persona_Id)
  values (@id_cliente, @id_persona)

  exec registrarRelPersonaCliente
  @id_cliente = 1,
  @id_persona = 1

   exec registrarRelPersonaCliente
  @id_cliente = 1,
  @id_persona = 2

   exec registrarRelPersonaCliente
  @id_cliente = 1,
  @id_persona = 3

    exec registrarRelPersonaCliente
  @id_cliente = 2,
  @id_persona = 4

   exec registrarRelPersonaCliente
  @id_cliente = 2,
  @id_persona = 5

   exec registrarRelPersonaCliente
  @id_cliente = 2,
  @id_persona = 6

    exec registrarRelPersonaCliente
  @id_cliente = 3,
  @id_persona = 7

   exec registrarRelPersonaCliente
  @id_cliente = 3,
  @id_persona = 8

   exec registrarRelPersonaCliente
  @id_cliente = 3,
  @id_persona = 9

    exec registrarRelPersonaCliente
  @id_cliente = 4,
  @id_persona = 10

   exec registrarRelPersonaCliente
  @id_cliente = 4,
  @id_persona = 11

   exec registrarRelPersonaCliente
  @id_cliente = 4,
  @id_persona = 12

    exec registrarRelPersonaCliente
  @id_cliente = 5,
  @id_persona = 13

   exec registrarRelPersonaCliente
  @id_cliente = 5,
  @id_persona = 14

   exec registrarRelPersonaCliente
  @id_cliente = 5,
  @id_persona = 15

    exec registrarRelPersonaCliente
  @id_cliente = 6,
  @id_persona = 16

   exec registrarRelPersonaCliente
  @id_cliente = 6,
  @id_persona = 17

   exec registrarRelPersonaCliente
  @id_cliente = 6,
  @id_persona = 18

    exec registrarRelPersonaCliente
  @id_cliente = 7,
  @id_persona = 19

   exec registrarRelPersonaCliente
  @id_cliente = 7,
  @id_persona = 20

   exec registrarRelPersonaCliente
  @id_cliente = 7,
  @id_persona = 21

    exec registrarRelPersonaCliente
  @id_cliente = 8,
  @id_persona = 22

   exec registrarRelPersonaCliente
  @id_cliente = 8,
  @id_persona = 23

   exec registrarRelPersonaCliente
  @id_cliente = 8,
  @id_persona = 24