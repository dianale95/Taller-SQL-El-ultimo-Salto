/* Ejercicio 18 Enlista todos los clientes mayores de 60 años que han hecho compras, mostrando nombre, edad aproximada y total gastado.
    La consulta une las tablas CLIENTES y VENTAS, calcula la edad aproximada restando los años de nacimiento
    del año actual (usando strftime de SQLite) y suma los totales de venta por cliente. Se filtra con HAVING
    para incluir solo a los mayores de 60 años.
    Resultado esperado: varias filas con columnas (nombre, edad_aproximada, total_gastado) */

SELECT c.nombre, 
    CAST(strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento) AS INTEGER) AS edad_aproximada,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre, c.fecha_nacimiento
HAVING CAST(strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento) AS INTEGER) > 60;