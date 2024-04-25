/*1*/ SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo ='alumno' ORDER BY apellido1, apellido2, nombre ASC;
/*2*/SELECT nombre, apellido1 FROM Persona WHERE tipo ='alumno' AND telefono IS NULL;
/*3*/ SELECT * FROM persona WHERE YEAR(fecha_nacimiento) = 1999 AND tipo='alumno';
/*4*/ SELECT * FROM persona WHERE tipo = 'profesor' AND telefono IS NULL AND RIGHT(nif, 1) = 'k';
/*5*/ SELECT nombre FROM asignatura WHERE cuatrimestre = 1 AND curso=3 AND id_grado=7;
/*6*/ SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre FROM persona JOIN profesor ON persona.id = profesor.id_profesor JOIN departamento ON profesor.id_departamento = departamento.id ORDER BY persona.apellido1, persona.apellido2, persona.nombre ASC;
/*7*/SELECT persona.nif, asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin FROM persona JOIN alumno_se_matricula_asignatura ON persona.id = alumno_se_matricula_asignatura.id_alumno JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id WHERE persona.nif = '26902806M';
/*8*/ SELECT  departamento.nombre, asignatura.nombre FROM departamento JOIN profesor ON departamento.id = profesor.id_departamento JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor JOIN grado ON asignatura.id_grado = grado.id WHERE grado.nombre = 'Grado en Ingeniería Informática (Plan 2015)'
