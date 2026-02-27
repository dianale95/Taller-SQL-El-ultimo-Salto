/* Ejercicio 22 Crea una clasificación de clientes por nivel de gasto:
   "Alto Valor" si gastó más de $5,000, "Medio Valor" si gastó entre $2,000 y $5,000, "Bajo Valor" si gastó menos de $2,000.
   La consulta une las tablas clientes y ventas. Agrupa por cliente y suma el total de ventas, evaluando el resultado con la sentencia case when para asignar dinámicamente la categoría de gasto.
   Resultado esperado: varias filas con columnas (nombre, categoria_gasto, total_gastado)
 */
 
select c.nombre,
    case 
        when sum(v.total_venta) > 5000 then 'alto valor'
        when sum(v.total_venta) >= 2000 then 'medio valor'
        else 'bajo valor'
    end as categoria_gasto,
    sum(v.total_venta) as total_gastado
from clientes c
join ventas v on c.id_cliente = v.id_cliente
group by c.id_cliente, c.nombre;