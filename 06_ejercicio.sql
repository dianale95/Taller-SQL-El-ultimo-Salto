/* Ejercicio 6 ¿Cuál fue el monto total de ventas en toda la historia?
    La consulta suma la columna "total_venta" de la tabla "ventas", obteniendo el monto acumulado de todas las transacciones.
    Resultado esperado: una sola fila con una columna (monto_total_ventas) */

SELECT sum(total_venta) as monto_total_ventas from ventas;