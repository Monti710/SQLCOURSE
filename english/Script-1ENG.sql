/*
--------------------------------------
      BASIC SQL GUIDE FOR BEGINNERS
--------------------------------------

This guide shows the basic operations to create, modify, query, update, and delete data in a MySQL database. 
Each section is structured to facilitate a progressive and clear learning experience.
*/

/* 1. Verify and Create a Database */
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS excercisecourse;
USE excercisecourse;

/* 2. Creating and Describing Tables */

/* Drop the 'tabla1' table if it exists */
DROP TABLE IF EXISTS tabla1;

/* Create the 'tabla1' table */
CREATE TABLE tabla1 (
    nombre VARCHAR(50),
    number INT(10)
);

/* Check existing tables */
SHOW TABLES;

/* Describe the structure of the 'tabla1' table */
DESCRIBE tabla1;

/* Query 'tabla1' (it will be empty at the start) */
SELECT * FROM tabla1;

/* 3. Creating and Modifying the 'tabla2' Table */

/* Drop the 'tabla2' table if it exists (not used previously) */
DROP TABLE IF EXISTS tabla2;

/* Create the 'tabla2' table. 
 * We define 'number' as VARCHAR since this data type allows a limit of characters.
 * If we leave it as an integer, the limit would be up to the number 15, 
 * but what we need is a limit of 15 characters.
 */
CREATE TABLE tabla2 (
    nombre VARCHAR(50),
    number VARCHAR(15),
    correo VARCHAR(20),
    addres VARCHAR(50),
    sexo VARCHAR(1)
);

/* Modify the 'number' column to VARCHAR(15) */
ALTER TABLE tabla2 MODIFY number VARCHAR(15);

/* Add a new 'age' column to the 'tabla2' table */
ALTER TABLE tabla2 ADD age INT(200);

/* Describe the structure of 'tabla2' to confirm the changes */
DESCRIBE tabla2;

/* 4. Insert Data into the 'tabla2' Table */
INSERT INTO tabla2 (nombre, number, correo, addres, sexo, age)
VALUES ("nombre", "number", "correo", "addres", "M", 40); 

INSERT INTO tabla2 (nombre, number, sexo, age)
VALUES ("nombre", "number", "F", 22);

/* 5. Querying Data */

/* Select all data from the 'tabla2' table */
SELECT * FROM tabla2;

/* Select specific columns (nombre, sexo) */
SELECT nombre, sexo FROM tabla2;

/* Filter results using the WHERE clause */
SELECT nombre, sexo FROM tabla2 WHERE nombre = "Ismael";
SELECT * FROM tabla2 WHERE nombre <> "Ismael";
SELECT * FROM tabla2 WHERE age > 26;
SELECT * FROM tabla2 WHERE age < 40;
SELECT * FROM tabla2 WHERE age <= 40;
SELECT * FROM tabla2 WHERE age >= 22;

/* 6. Deleting Records */

/* Delete users matching a specific condition (age = 22) */
DELETE FROM tabla2 WHERE age = 22;

/* Delete all records from the 'tabla2' table (CAUTION!) */
DELETE FROM tabla2;

/* 7. Updating Records */

/* Update the age of all users to 22 */
UPDATE tabla2 SET age = 22;

/* Update the age and number of a specific user */
UPDATE tabla2
SET age = 43,
    number = "312"
WHERE nombre = "Ismael";


/*
--------------------------------------
         TIPS FOR BEGINNERS
--------------------------------------

1. Start with the basics: Create simple tables and become familiar with statements like CREATE, ALTER, and DESCRIBE.
2. Insert data carefully: Ensure you provide values for required columns or allow NULL.
3. Use SELECT to explore data: Practice using WHERE and relational operators (=, <>, <, >, <=, >=).
4. Update and delete with conditions: Always use WHERE in UPDATE and DELETE to avoid modifying all records by mistake.
5. Structure your code: Arrange your statements and add comments to clarify the purpose of each section.

By following these steps, you will gradually gain more confidence in SQL and data manipulation.
--------------------------------------
*/
