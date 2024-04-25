/*1*/ SELECT COUNT(id) FROM persona WHERE tipo ='alumno';
/*2*/SELECT COUNT(id) 
FROM persona WHERE tipo ='alumno' 
AND YEAR(fecha_nacimiento) = 1999;
 


