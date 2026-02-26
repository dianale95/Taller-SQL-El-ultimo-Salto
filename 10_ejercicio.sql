/* Ejercicio 10 Muestra todos los clientes de género "F" (femenino) ordenados por fecha de nacimiento (más viejitas primero).
	La consulta selecciona todos los clientes cuyo campo genero es 'F' y los ordena por fecha_nacimiento en orden ascendente
	para mostrar primero a las personas de mayor edad.
	Resultado esperado: varias filas con las columnas de la tabla clientes */

SELECT * FROM clientes WHERE genero = 'F' ORDER BY fecha_nacimiento ASC;