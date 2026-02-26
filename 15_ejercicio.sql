/* Ejercicio 15 ¿Cuál es el accesorio más barato disponible?
    La consulta busca el precio mínimo entre los productos de categoría "Accesorios" y muestra
    el nombre junto con ese precio.
    Si hay varios accesorios con el mismo precio mínimo, puede devolver uno cualquiera.
    Resultado esperado: una sola fila con columnas (nombre, precio_minimo) */

SELECT nombre, min(precio) AS precio_minimo from productos WHERE categoria = 'Accesorios'