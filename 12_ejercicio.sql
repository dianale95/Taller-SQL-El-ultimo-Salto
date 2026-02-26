/* Ejercicio 12 ¿Cuál es el precio promedio de los productos en stock?
    La consulta calcula el promedio de la columna "precio" de todos los productos registrados
    en la tabla "productos".
    Resultado esperado: una sola fila con una columna (precio_promedio) */

SELECT avg(precio) AS precio_promedio FROM productos;