/* Ejercicio 8 ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?
    La consulta cuenta las filas de la tabla "ventas" donde el campo "cupon_usado" coincide
    con el código especificado.
    Resultado esperado: una sola fila con una columna (ventas_cupon) */

SELECT count(*) AS ventas_cupon from ventas where cupon_usado = 'ULTIMO_SUSPIRO';