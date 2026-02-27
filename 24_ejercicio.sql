/* Ejercicio 24 Para cada mes en 2025, calcula: total de ventas, número de transacciones, y ticket promedio.
   La consulta filtra la tabla ventas para el año 2025 utilizando strftime para extraer el año. Agrupa los registros extraídos por mes utilizando strftime('%m', fecha_venta), y calcula la suma del total de ventas, el conteo de transacciones y el promedio del ticket por cada mes. 
   Resultado esperado: varias filas con columnas (mes, total_ventas, numero_transacciones, ticket_promedio)
 */

select strftime('%m', fecha_venta) as mes,
    sum(total_venta) as total_ventas,
    count(id_venta) as numero_transacciones,
    avg(total_venta) as ticket_promedio
from ventas
where strftime('%Y', fecha_venta) = '2025'
group by mes
order by mes;