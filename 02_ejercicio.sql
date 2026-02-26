/* Ejercicio 2 Enlista todos los productos de la categoría "Paracaídas"
con sus precios, ordenados de mayor a menor precio.
	La consulta obtiene todos los productos de la categoría "Paracaídas" ordenados de forma descendente por su precio.
	Resultado esperado: varias filas con columnas (id_producton, nombre, categoria, precio, stock) */

    SELECT * from productos where categoria = 'Paracaídas' ORDER BY precio DESC;