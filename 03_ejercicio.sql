/* Ejercicio 3 ¿Cuál es el paracaídas más caro que tenemos?
    La consulta busca el precio más alto entre los productos de la categoría "Paracaídas" y muestra el nombre junto
    con dicho precio máximo.
    Resultado esperado: una sola fila con columnas (nombre, precio_maximo) */

SELECT nombre, max(precio) AS precio_maximo from productos where categoria = 'Paracaídas';