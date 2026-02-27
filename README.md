# Taller SQL Práctico: El Último Salto

## 📋 Datos de la estudiante

**Nombre:** Diana Alejandra Castrillón Ortega

**Correo electrónico:** nanis_aleja95@hotmail.com

Especializacion en Big Data, Universidad CESMAG

## 🪂 Contexto del Taller

Este repositorio contiene las **soluciones completas** del **Taller SQL Práctico de "El Último Salto"**, una tienda especializada en paracaidismo y deportes extremos ubicada en **Pasto, Nariño**.

### Acerca de la Tienda "El Último Salto"

**El Último Salto** es una tienda especializada que ofrece:

#### Productos Principales
- **Paracaídas:** Militares, deportivos, emergencia
- **Accesorios de Seguridad:** Cascos, altímetros, trajes de vuelo, gafas

#### Lógica de Negocio Especial
**Cupón "ULTIMO_SUSPIRO"**: Ofrece un **30% de descuento** exclusivamente a clientes mayores de 60 años (nuestros "saltadores de oro").

### Base de Datos

La base de datos `tienda.db` contiene:
- **4 tablas normalizadas** con relaciones bien definidas
- **1,000+ transacciones** de venta sintéticas
- **Datos históricos** de los últimos 2 años

## ✅ Cómo Verificar las Soluciones

Para ejecutar y verificar cualquiera de las soluciones propuestas, sigue estos pasos:

### Requisitos Previos
- Acceso a [SQLOnline](https://sqliteonline.com/) (SQLite online)
- Base de datos `BD/tienda.db` (incluida en este repositorio)

### Pasos para Verificar

#### 1. Abrir SQLOnline
- Accede a [SQLOnline (SQLite)](https://sqliteonline.com/)

#### 2. Cargar la Base de Datos
- Haz clic en el botón **"open sqlite db"**
- Selecciona el archivo `BD/tienda.db`
- Espera a que la base de datos se cargue correctamente

#### 3. Copiar y Ejecutar la Solución
- Abre el archivo SQL de la solución (ej: `01_ejercicio.sql`)
- Puedes **copiar el contenido completo** del archivo y pegarlo en el editor SQL de SQLOnline, o hacer clic en **"import"**
- Haz clic en el botón **"Run"** o presiona `Ctrl+Enter`

#### 4. Verificar el Resultado
- Observa los resultados en el panel de "Results"
- Compara con el formato esperado documentado en cada solución

## 📤 Formato de Respuestas Esperadas

Cada ejercicio devuelve una tabla con resultados específicos según su enunciado:

### Estructura General
```
| Columna1 | Columna2 | Columna3 | ... |
|----------|----------|----------|-----|
| dato     | dato     | dato     | ... |
| dato     | dato     | dato     | ... |
```

## 📂 Estructura del Repositorio

```
.
├── 01_ejercicio.sql      ← Soluciones del Ejercicio 1
├── 02_ejercicio.sql      ← Soluciones del Ejercicio 2
├── ...
├── 30_ejercicio.sql      ← Soluciones del Ejercicio 30
├── README.md             ← Este archivo
└── BD/
    └── tienda.db         ← Base de datos (tienda El Último Salto)
```
