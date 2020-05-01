use veterinaria;

CREATE TRIGGER [dbo].[trConsultaMedica]
   ON  [dbo].[tbl_Historial_Mascota] 
   FOR INSERT 
AS 
BEGIN
 declare @totalVisitas int = NULL, @Mascota_Id INT = NULL
 select @Mascota_Id = inserted.HisMacota_Mascota_Id ,@totalVisitas =COUNT([Mascota_Id])
 from tbl_Mascota mc INNER JOIN inserted  on mc.Mascota_Id = inserted.HisMacota_Mascota_Id
 GROUP BY inserted.HisMacota_Mascota_Id

 IF (@Mascota_Id IS NOT NULL )
 BEGIN
	INSERT INTO tbl_Tab_axiliar ([Auxiliar_Macota_Id],[Auxiliar_Total]) 
	VALUES (@Mascota_Id,@totalVisitas)
 END
 ELSE
 BEGIN
	update tbl_Tab_axiliar SET Auxiliar_Total = @totalVisitas wHERE Auxiliar_Macota_Id = @Mascota_Id
 END
END

CREATE TRIGGER [dbo].[trVacuna]
   ON  [dbo].[tbl_Vacunas] 
   FOR INSERT 
AS 
BEGIN
 declare @totalVacunados int = NULL, @Cve_mascota INT = NULL
 select @Cve_mascota = inserted.Vacunas_Mascota_Id ,@totalVacunados =COUNT([Mascota_Id])
 from tbl_Mascota masc INNER JOIN inserted  on masc.Mascota_Id = inserted.Vacunas_Mascota_Id
 GROUP BY inserted.Vacunas_Mascota_Id

 IF (@Cve_mascota IS NOT NULL )
 BEGIN
	INSERT INTO tbl_Tab_axiliar ([Auxiliar_Macota_Id],[Auxiliar_Total]) 
	VALUES (@Cve_mascota,@totalVacunados)
 END
 ELSE
 BEGIN
	update tbl_Tab_axiliar SET Auxiliar_Total = @totalVacunados wHERE Auxiliar_Macota_Id = @Cve_mascota;
 END
END

--permiten contabilizar el número de mascotas atendidas por especie, raza, fecha de atención y enfermedad a tratar--

select COUNT ([Mascota_Id]) as Visita_medica_perro from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Especie = 'perro';

select COUNT ([Mascota_Id]) as Visita_medica_gallina from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Especie = 'gallina';

select COUNT ([Mascota_Id]) as Visita_medica_gallo from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Especie = 'gallo';

select COUNT ([Mascota_Id]) as Visita_medica_gato from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Especie = 'gato';

select COUNT ([Mascota_Id]) as Visita_medica_loro from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Especie = 'loro';

select COUNT ([Mascota_Id]) as Visita_medica_perico from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Especie = 'perico';

--Raza--

select COUNT ([Mascota_Id]) as Visita_medica_angora_turco from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'angora turco';

select COUNT ([Mascota_Id]) as Visita_beagle from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'beagle';

select COUNT ([Mascota_Id]) as Visita_medica_bichon_maltes from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'bichon maltes';

select COUNT ([Mascota_Id]) as Visita_medica_boxer from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'boxer';

select COUNT ([Mascota_Id]) as Visita_medica_bulldog_frances from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'bulldog frances';

select COUNT ([Mascota_Id]) as Visita_medica_calzada_holandesa from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'calzada holandesa';

select COUNT ([Mascota_Id]) as Visita_medica_chihuahua from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'chihuahua';

select COUNT ([Mascota_Id]) as Visita_medica_golden_retriever from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'golden retriever';

select COUNT ([Mascota_Id]) as Visita_medica_golder_retriever from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'golder retriever';


select COUNT ([Mascota_Id]) as Visita_medica_kelso from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'kelso';


select COUNT ([Mascota_Id]) as Visita_medica_ladrador from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'ladrador';


select COUNT ([Mascota_Id]) as Visita_medica_ladrador_retriever from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'ladrador retriever';


select COUNT ([Mascota_Id]) as Visita_medica_loro_mexicano from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'loro mexicano';


select COUNT ([Mascota_Id]) as Visita_medica_munchkin from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'munchkin';


select COUNT ([Mascota_Id]) as Visita_medica_persa from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'persa';


select COUNT ([Mascota_Id]) as Visita_medica_pitbull from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'pitbull';


select COUNT ([Mascota_Id]) as Visita_medica_ponter_ingles from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'ponter ingles';

select COUNT ([Mascota_Id]) as Visita_medica_samoyedo from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'samoyedo';

select COUNT ([Mascota_Id]) as Visita_medica_somali from tbl_Mascota
INNER JOIN tbl_Historial_Mascota on tbl_Mascota.Mascota_Id = tbl_Historial_Mascota.HisMacota_Mascota_Id
where Mascota_Raza = 'somali';

--Fecha_atencion--
select COUNT ([Mascota_Id]) as Fecha_24092019 from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Fecha = '2019-09-24';

select COUNT ([Mascota_Id]) as Fecha_26092019 from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Fecha = '2019-09-26';

--Enfermedad a tratar--
select COUNT ([Mascota_Id]) as artrosis from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'artrosis';

select COUNT ([Mascota_Id]) as bronquitis_infecciosa from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'bronquitis infecciosa';

select COUNT ([Mascota_Id]) as colera_aviar from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'colera aviar';

select COUNT ([Mascota_Id]) as fiebre from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'fiebre';

select COUNT ([Mascota_Id]) as diarrea from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'diarrea';

select COUNT ([Mascota_Id]) as moquillo from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'moquillo';

select COUNT ([Mascota_Id]) as otitis from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'otitis';

select COUNT ([Mascota_Id]) as parvovirus from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'parvovirus';

select COUNT ([Mascota_Id]) as peritonitis from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'peritonitis';

select COUNT ([Mascota_Id]) as problemas_gastointestinales from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'problemas gastointestinales';

select COUNT ([Mascota_Id]) as pulmonia from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'pulmonia';

select COUNT ([Mascota_Id]) as rabia from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'rabia';

select COUNT ([Mascota_Id]) as salmonelosis from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'salmonelosis';

select COUNT ([Mascota_Id]) as sarna from tbl_Mascota
INNER JOIN tbl_Vacunas on tbl_Mascota.Mascota_Id = tbl_Vacunas.Vacunas_Mascota_Id
where Vacunas_Enfermedad = 'sarna';