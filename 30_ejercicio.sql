/* Ejercicio 30 Genera un análisis demográfico: para cada rango de edad (18-29, 30-39, ..., 70+), cuenta clientes únicos, número de transacciones e ingresos totales. Ordena por rango de edad.
   La consulta utiliza una cte para calcular la edad de los clientes. Luego une esta tabla temporal con clientes y ventas, y utiliza case when para agrupar en rangos de edad. Calcula los clientes únicos con count(distinct), el total de transacciones y suma los ingresos.
   Resultado esperado: varias filas con columnas (rango_edad, clientes_unicos, numero_transacciones, ingresos_totales)
 */

with clientes_edades as (
    select id_cliente,
        cast(strftime('%Y', 'now') - strftime('%Y', fecha_nacimiento) as integer) as edad
    from clientes
)
select 
    case 
        when ce.edad between 18 and 29 then '18-29'
        when ce.edad between 30 and 39 then '30-39'
        when ce.edad between 40 and 49 then '40-49'
        when ce.edad between 50 and 59 then '50-59'
        when ce.edad between 60 and 69 then '60-69'
        else '70+' 
    end as rango_edad,
    count(distinct c.id_cliente) as clientes_unicos,
    count(v.id_venta) as numero_transacciones,
    sum(v.total_venta) as ingresos_totales
from clientes c
join clientes_edades ce on c.id_cliente = ce.id_cliente
join ventas v on c.id_cliente = v.id_cliente
group by rango_edad
order by rango_edad;