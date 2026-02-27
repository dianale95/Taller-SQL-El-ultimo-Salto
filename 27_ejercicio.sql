/* Ejercicio 27 ¿Cuál es la diferencia en ingresos entre el mes con mayor venta y el mes con menor venta en 2025?
   La consulta utiliza una cte para agrupar las ventas del año 2025 por mes usando strftime y sumar los ingresos mensuales. Luego, en la consulta principal, calcula la diferencia restando el valor mínimo (min) del valor máximo (max) de esos ingresos mensuales calculados.
   Resultado esperado: una fila con la columna (diferencia_ingresos)
 */

with ingresos_mensuales as (
    select strftime('%m', fecha_venta) as mes,
        sum(total_venta) as total_mes
    from ventas
    where strftime('%Y', fecha_venta) = '2025'
    group by mes
)
select max(total_mes) - min(total_mes) as diferencia_ingresos from ingresos_mensuales;