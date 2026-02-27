/* Ejercicio 23 ¿Cuáles son los 5 productos con mayor ingresos acumulado?
   La consulta une PRODUCTOS con DETALLE_VENTAS. Calcula el ingreso acumulado como la suma de (cantidad * precio_unitario) por detalle, agrupando por el identificador y nombre del producto. Finalmente, ordena de mayor a menor según el ingreso y limita el resultado a los 5 primeros.
   Resultado esperado: varias filas con columnas (nombre, ingresos_acumulados)
 */

select p.nombre, 
    sum(dv.cantidad * dv.precio_unitario) as ingresos_acumulados
from productos p
join detalle_ventas dv on p.id_producto = dv.id_producto
group by p.id_producto, p.nombre
order by ingresos_acumulados desc
limit 5;