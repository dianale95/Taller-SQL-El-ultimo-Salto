/* Ejercicio 21 ¿Cuáles son los clientes que han usado el cupón "ULTIMO_SUSPIRO" al menos 3 veces?
   La consulta une las tablas clientes y ventas. Filtra primero las transacciones donde se usó el cupón, agrupa por cliente y utiliza la función count sobre los registros resultantes, aplicando un filtro having para mostrar únicamente aquellos con 3 o más usos.
   Resultado esperado: varias filas con columnas (nombre, veces_usado)
 */

select c.nombre, count(v.id_venta) as veces_usado
from clientes c
join ventas v on c.id_cliente = v.id_cliente
where v.cupon_usado = 'ULTIMO_SUSPIRO'
group by c.id_cliente, c.nombre
having count(v.id_venta) >= 3;