-- VISTA DE ESTATUS DE ALUMNOS --

create view estado_estudiantes as select
		estudiantes.matricula,
		concat( estudiantes.nombre, " ", estudiantes.apellidopaterno, " ", estudiantes.apellidomaterno ) as "estudiante",
		estudiantes.semestre,
		estatus.clave as estatus
	from
		estudiantes
	inner join estatus on
		estudiantes.estatus = estatus.clave;

---- VISTA DE CURSOS ---

  create view vista_cursos as select
		cursos.id_curso as id,
		concat( maestros.nombre, " ", maestros.apellidopaterno, " ", maestros.apellidomaterno ) as "maestro",
		materias.nombre as materia,
		cursos.semestre,
		cursos.grupo as grupo,
		frecuencias.diasemana,
		cursos.horainicio,
		cursos.horafin
	from
		cursos
	inner join maestros on
		cursos.maestro = maestros.matricula
	inner join materias on
		cursos.materia = materias.clave
	inner join frecuencias on
		cursos.frecuencia = frecuencias.id_frecuencias
	order by id asc;

---- VISTA DE INSCRIPCIONES ----

  create view vista_inscripciones as select
		inscripciones.id_inscripcion as "id",
		estudiantes.matricula,
		concat( estudiantes.nombre, " ", estudiantes.apellidopaterno, " ", estudiantes.apellidomaterno ) as "estudiante",
		inscripciones.curso,
		materias.nombre,
		cursos.grupo,
		cursos.horainicio,
		cursos.horafin
	from
		inscripciones
	inner join estudiantes on
		inscripciones.matricula = estudiantes.matricula
	inner join cursos on
		inscripciones.curso = cursos.id_curso
	inner join materias on
		cursos.materia = materias.clave;

---- VISTA DE HORARIOS ----

create view vista_horario as select
		id,
		nombre,
		grupo,
		concat( horainicio, " - ", horafin ) as hora
	from
		vista_inscripciones;
