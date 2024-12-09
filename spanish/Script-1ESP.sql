/*
--------------------------------------
      GUÍA BÁSICA DE SQL PARA PRINCIPIANTES
--------------------------------------

Esta guía muestra las operaciones básicas para crear, modificar, consultar, actualizar y eliminar datos en una base de datos MySQL. 
Cada sección se ha estructurado para que el aprendizaje sea progresivo y claro.
*/

/* 1. Verificar y Crear una Base de Datos */
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS excercisecourse;
USE excercisecourse;

/* 2. Creación y Descripción de Tablas */

/* Eliminamos la tabla 'monti' si existe */
DROP TABLE IF EXISTS tabla1;

/* Creamos la tabla 'monti' */
CREATE TABLE tabla1 (
    nombre VARCHAR(50),
    number INT(10)
);

/* Verificamos la existencia de tablas */
SHOW TABLES;

/* Describimos la estructura de la tabla 'monti' */
DESCRIBE tabla1;

/* Consultamos 'monti' (estará vacía al inicio) */
SELECT * FROM tabla1;

/* 3. Creación y Modificación de la Tabla 'user' */

/* Eliminamos la tabla 'office' si existe (no se utilizará) */
DROP TABLE IF EXISTS tabla2;

/* Creamos la tabla 'user', number se le agregar como tipo de dato varchar ya que 
 * en este  tipo de dato se limiten los caracteres, si lo dejamos de tipo entero
 * el limite seria hasta el numero 15 y lo que necesitamos es que sea un limite de 15 caracteres */
CREATE TABLE tabla2 (
    nombre VARCHAR(50),
    number VARCHAR(15),
    correo VARCHAR(20),
    addres VARCHAR(50),
    sexo VARCHAR(1)
);

/* Modificamos el tipo de la columna 'number' a VARCHAR(15) */
ALTER TABLE tabla2 MODIFY number VARCHAR(15);

/* Agregamos una nueva columna 'age' a la tabla 'user' */
ALTER TABLE tabla2 ADD age INT(200);

/* Describimos la estructura de 'user' para confirmar los cambios */
DESCRIBE tabla2;

/* 4. Insertar Datos en la Tabla 'user' */
INSERT INTO tabla2 (nombre, number, correo, addres, sexo, age)
VALUES ("nombre", "number", "correo", "addres", "M", 40); 

INSERT INTO tabla2 (nombre, number, sexo, age)
VALUES ("nombre", "number", "F", 22);

/* 5. Consultar Datos */

/* Seleccionar todos los datos de la tabla 'user' */
SELECT * FROM tabla2;

/* Seleccionar columnas específicas (nombre, sexo) */
SELECT nombre, sexo FROM tabla2;

/* Filtrar resultados con la cláusula WHERE */
SELECT nombre, sexo FROM tabla2 WHERE nombre = "Ismael";
SELECT * FROM tabla2 WHERE nombre <> "Ismael";
SELECT * FROM tabla2 WHERE age > 26;
SELECT * FROM tabla2 WHERE age < 40;
SELECT * FROM tabla2 WHERE age <= 40;
SELECT * FROM tabla2 WHERE age >= 22;

/* 6. Eliminar Registros */

/* Eliminar usuarios con una condición específica (edad = 22) */
DELETE FROM tabla2 WHERE age = 22;

/* Eliminar todos los registros de la tabla 'user' (¡CUIDADO!) */
DELETE FROM tabla2;

/* 7. Actualizar Registros */

/* Actualizar la edad de todos los usuarios a 22 */
UPDATE tabla2 SET age = 22;

/* Actualizar la edad y el número de un usuario específico */
UPDATE tabla2
SET age = 43,
    number = "312"
WHERE nombre = "Ismael";


/*
--------------------------------------
         CONSEJOS PARA PRINCIPIANTES
--------------------------------------

1. Empieza con lo básico: Crea tablas sencillas y familiarízate con sentencias como CREATE, ALTER y DESCRIBE.
2. Inserta datos con cuidado: Asegúrate de proporcionar valores para las columnas requeridas o que permitan NULL.
3. Usa SELECT para explorar datos: Practica el uso de WHERE y operadores relacionales (=, <>, <, >, <=, >=).
4. Actualiza y elimina con condiciones: Siempre utiliza WHERE en UPDATE y DELETE para no modificar todos los registros por error.
5. Estructura tu código: Ordena tus sentencias y agrega comentarios para aclarar la finalidad de cada sección.

Sigue estos pasos y gradualmente tendrás mayor dominio sobre SQL y la manipulación de datos.
--------------------------------------
*/

