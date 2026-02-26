/* Ejercicio 9 ¿Cuál fue la venta con mayor monto en toda la historia?
    La consulta muestra los detalles de la venta cuyo "total_venta" alcanza el valor máximo.
    Se puede encontrar ese máximo con la función agregada MAX y luego filtrar por él, lo que evita
    ordenar todos los registros.
    Resultado esperado: una sola fila con columnas (id_venta, id_cliente, fecha_venta, total_venta) */

SELECT * FROM ventas WHERE total_venta = (SELECT MAX(total_venta) FROM ventas);