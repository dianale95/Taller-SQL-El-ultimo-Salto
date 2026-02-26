/* Ejercicio 7 Enlista todos los productos de "Accesorios" con precio menor a $500.
    La consulta obtiene todas las filas de la tabla "productos" donde la categoría sea "Accesorios" y el precio
    sea menor a 500 unidades.
    Resultado esperado: varias filas con todas las columnas del producto */

SELECT * from productos WHERE categoria = 'Accesorios' and precio < 500;