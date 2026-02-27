/* Ejercicio 19 ¿Cuál es el producto más vendido en cantidad (en términos de unidades, no dinero)?
    La consulta une PRODUCTOS con DETALLE_VENTAS, suma la cantidad vendida por cada producto,
    ordena de forma descendente y limita a una fila para obtener el de mayor número de unidades.
    Resultado esperado: una sola fila con columnas (nombre, total_unidades) */

SELECT p.nombre, SUM(dv.cantidad) AS total_unidades
FROM productos p
JOIN detalle_ventas dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY total_unidades DESC
LIMIT 1;