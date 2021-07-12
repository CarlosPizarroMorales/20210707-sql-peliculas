-- Desafio 2 de sql, desarrollado en consola. Probado en Fedora 34
 
-- 1. CREAR LA BASE DE DATOS LLAMADA peliculas Y SUS TABLAS RESPECTIVAS
-- $ createdb peliculas (o CREATE DATABASE peliculas si estás dentro de psql)
-- $ psql peliculas
CREATE TABLE peliculas (
    id INT NOT NULL PRIMARY KEY UNIQUE, 
    pelicula VARCHAR(100) NOT NULL, 
    anio_estreno INT NOT NULL, 
    director VARCHAR(50) NOT NULL);

CREATE TABLE reparto (
    id_pelicula INT NOT NULL REFERENCES peliculas(id), 
    nombre_actor VARCHAR(50));

-- SE CONFIRMA QUE LAS TABLAS FUERON CREADAS CORRECTAMENTE
-- \d peliculas
-- \d reparto     

-- 2. CARGAR AMBOS ARCHIVOS A SU TABLA CORRESPONDIENTE

-- $ \copy peliculas FROM '~/bootcamp/20210707-sql-peliculas/peliculas.csv' csv header
-- $ \copy reparto FROM '~/bootcamp/20210707-sql-peliculas/reparto.csv' csv

-- 3. OBTENER EL ID DE LA PELICULA 'Titanic'
SELECT id FROM peliculas WHERE pelicula='Titanic';

-- 4. Listar a todos los actores que aparecen en la película Titanic 
-- (se utiliza el valor capturado en la consulta del punto 3)
SELECT nombre_actor FROM reparto WHERE id_pelicula = 2;

-- 5. CONSULTAR EN CUANTAS PELICULAS DEL TOP 100 PARTICIPA HARRISON FORD
SELECT nombre_actor FROM reparto;


-- 6. CONSULTAR CUÁNTAS PELICULAS ESTRENADAS ENTRE LOS AÑOS 1990 Y 1999, ORDENADAS POR TÍTULO ASCEDENTEMENTE
SELECT pelicula FROM peliculas
WHERE anio_estreno BETWEEN 1990 AND 1999
ORDER BY pelicula ASC;

-- 7. 


