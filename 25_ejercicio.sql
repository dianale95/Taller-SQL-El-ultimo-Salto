/* Ejercicio 25 ¿Cuál es el cliente que compró la mayor variedad de productos diferentes (no cantidad, sino tipos distintos)?
   La consulta une las tablas clientes, ventas y detalle_ventas. Agrupa por cliente y utiliza count(distinct id_producto) sobre los detalles de venta para contar los tipos únicos de productos adquiridos. Finalmente, ordena de mayor a menor según la variedad y limita a 1.
   Resultado esperado: una fila con columnas (nombre, variedad_productos)
 */

select c.nombre, 
    count(distinct dv.id_producto) as variedad_productos
from clientes c
join ventas v on c.id_cliente = v.id_cliente
join detalle_ventas dv on v.id_venta = dv.id_venta
group by c.id_cliente, c.nombre
order by variedad_productos desc
limit 1;