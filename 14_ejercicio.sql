/* Ejercicio 14 Muestra todas las ventas realizadas en el año 2025, ordenadas por fecha (más recientes primero).
    La consulta selecciona las filas de la tabla "ventas" donde el año de "fecha_venta" sea 2025
    y ordena los resultados en orden descendente por fecha.
    Resultado esperado: varias filas con todas las columnas de la tabla ventas */

SELECT * FROM ventas WHERE fecha_venta >= '2025-01-01' AND fecha_venta < '2026-01-01' ORDER BY fecha_venta DESC;