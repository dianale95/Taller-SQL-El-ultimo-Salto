/* Ejercicio 29 ¿Cuál es el porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO"?
   La consulta calcula el porcentaje sumando el total de ventas donde el cupón coincide, multiplicándolo por 100.0 para asegurar la precisión decimal, y dividiendo el resultado entre la suma total de todas las ventas registradas.
   Resultado esperado: una fila con la columna (porcentaje_cupon)
 */

select 
    (sum(case when cupon_usado = 'ULTIMO_SUSPIRO' then total_venta else 0 end) * 100.0) / sum(total_venta) as porcentaje_cupon
from ventas;