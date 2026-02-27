/* Ejercicio 16 ¿Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.
    La consulta une las tablas "CLIENTES" y "VENTAS", agrupa por cliente y suma los montos de venta.
    Ordena el resultado de forma descendente por el monto acumulado y toma la primera fila para obtener
    al mayor gastador.
    Resultado esperado: una sola fila con columnas (nombre, monto_total) */

SELECT c.nombre, SUM(v.total_venta) AS monto_total
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY monto_total DESC
LIMIT 1;