/* Ejercicio 20 Para cada categoría de producto, calcula el ingreso total, cantidad de unidades vendidas y ticket promedio por venta.
    La consulta une PRODUCTOS con DETALLE_VENTAS y VENTAS. Calcula el ingreso total como la suma
    de (cantidad * precio_unitario) por detalle (si la columna `precio_unitario` existe en DETALLE_VENTAS),
    el total de unidades vendidas sumando `cantidad` y el ticket promedio por venta dividiendo el
    ingreso total de la categoría entre el número de ventas distintas que incluyeron esa categoría.
    Resultado esperado: varias filas con columnas (categoria, ingreso_total, unidades_vendidas, ticket_promedio_por_venta)
 */

SELECT p.categoria, 
    SUM(v.total_venta) AS ingreso_total, 
    SUM(dv.cantidad) AS unidades_vendidas, 
    AVG(v.total_venta) AS ticket_promedio
FROM productos p
JOIN detalle_ventas dv ON p.id_producto = dv.id_producto
JOIN ventas v ON dv.id_venta = v.id_venta
GROUP BY p.categoria;