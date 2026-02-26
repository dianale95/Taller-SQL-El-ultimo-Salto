/* Ejercicio 13 ¿Cuántos productos tenemos en la categoría "Paracaídas"?
    La consulta cuenta el número total de productos registrados en la tabla "productos"
    cuya categoría sea "Paracaídas".
    Resultado esperado: una sola fila con una columna (count) */

SELECT count(*) from productos WHERE categoria = 'Paracaídas'