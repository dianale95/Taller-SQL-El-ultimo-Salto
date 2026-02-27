/* Ejercicio 28 Crea un reporte de "clientes de riesgo": aquellos cuya última compra fue hace más de 180 días a partir de hoy. Muestra nombre, correo y fecha de última compra.
   La consulta une las tablas clientes y ventas. Agrupa por cliente y utiliza max(fecha_venta) para obtener la compra más reciente, aplicando un filtro having para comparar esa fecha máxima contra la fecha actual menos 180 días usando date('now', '-180 days').
   Resultado esperado: varias filas con columnas (nombre, correo, ultima_compra)
 */

select c.nombre, c.correo, max(v.fecha_venta) as ultima_compra
from clientes c
join ventas v on c.id_cliente = v.id_cliente
group by c.id_cliente, c.nombre, c.correo
having max(v.fecha_venta) < date('now', '-180 days');