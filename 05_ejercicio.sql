/* Ejercicio 5 Muestra el nombre, correo y fecha de nacimiento de todos los clientes, ordenados alfabéticamente por nombre.
    La consulta selecciona los campos solicitado de la tabla "clientes" y los ordena por el nombre en orden ascendente.
    Resultado esperado: varias filas con columnas (nombre, correo, fecha_nacimiento) */

SELECT nombre, correo, fecha_nacimiento from clientes ORDER BY nombre;