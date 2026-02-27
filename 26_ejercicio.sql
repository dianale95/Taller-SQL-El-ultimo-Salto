/* Ejercicio 26 Identifica clientes que compraron SOLO paracaídas (nunca compraron accesorios). Muestra nombre y total gastado.
   La consulta utiliza una cte para identificar los clientes agrupando sus detalles de venta y aplicando la cláusula having para asegurar que la suma de productos en categorías diferentes a 'paracaídas' sea cero, y que al menos tengan uno de esta categoría. Finalmente, une clientes con ventas filtrando por los identificadores de la cte para sumar el total gastado.
   Resultado esperado: varias filas con columnas (nombre, total_gastado)
 */

with clientes_solo_paracaidas as (
    select v.id_cliente
    from ventas v
    join detalle_ventas dv on v.id_venta = dv.id_venta
    join productos p on dv.id_producto = p.id_producto
    group by v.id_cliente
    having 
        sum(case when lower(p.categoria) != 'paracaídas' then 1 else 0 end) = 0
        and sum(case when lower(p.categoria) = 'paracaídas' then 1 else 0 end) > 0
)
select c.nombre, 
    sum(v.total_venta) as total_gastado
from clientes c
join ventas v on c.id_cliente = v.id_cliente
where c.id_cliente in (select id_cliente from clientes_solo_paracaidas)
group by c.id_cliente, c.nombre;