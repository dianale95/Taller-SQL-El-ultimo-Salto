/* Ejercicio 4 ¿Cuántas transacciones de venta hemos registrado?
    La consulta cuenta el número total de filas en la tabla "ventas", representando las transacciones de venta realizadas.
    Resultado esperado: una sola fila con una columna (total_transacciones) */

SELECT count(*) as total_transacciones from ventas;