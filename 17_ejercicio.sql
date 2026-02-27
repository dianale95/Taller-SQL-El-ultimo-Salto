/* Ejercicio 17 ¿Cuánto dinero hemos dejado de ingresar por el cupón "ULTIMO_SUSPIRO"?
    Calcula la diferencia entre lo que hubiera sido el total de ventas sin el descuento y lo que
    realmente se ingresó con el descuento aplicado. Se asume que el cupón representa un 30% de
    rebaja sobre el precio final, por lo que el monto sin descuento se estima dividiendo el total
    con descuento entre 0.70.
    Resultado esperado: una fila con columnas (total_sin_descuento, total_con_descuento,
    dinero_dejado_de_ingresar) */

WITH TotalesCupon AS (
    SELECT SUM(total_venta) AS total_con_descuento, SUM(total_venta) / 0.70 AS total_sin_descuento
    FROM ventas
    WHERE cupon_usado = 'ULTIMO_SUSPIRO'
)
SELECT total_sin_descuento,total_con_descuento,(total_sin_descuento - total_con_descuento) AS dinero_dejado_de_ingresar
FROM TotalesCupon;