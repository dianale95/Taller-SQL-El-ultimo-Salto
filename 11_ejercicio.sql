/* Ejercicio 11 ¿Número total de líneas (detalles) de venta registradas?
    La consulta cuenta el total de filas en la tabla "detalle_ventas", donde cada fila representa
    una línea o detalle de venta.
    Resultado esperado: una sola fila con una columna (total_lineas) */

SELECT count(*) As total_lineas FROM detalle_ventas;