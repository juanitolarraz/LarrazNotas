CREATE DATABASE larraz_notas

CREATE TABLE usuarios (
  id int(10) unsigned NOT NULL auto_increment primary key,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(80) NOT NULL UNIQUE
)

INSERT INTO usuarios VALUES (1,'Juan Perez', 'juanperez@gmail.com'), (2, 'Juan Zapallo', 'juanzapallo@gmail.com'), (3, 'Juan Roca', 'juanroca@gmail.com'), (4, 'Juan Arbol', 'juanarbol@gmail.com'), (5, 'Juan Perdiz', 'juanperdiz@gmail.com'), (6, 'Juan Batata', 'juanbatata@gmail.com'), (7, "Juan Arroz", "juanarroz@gmail.com"), (8, 'Juan Adios', 'juanadios@gmail.com'), (9, 'Juan Bautista', 'juanbautista@gmail.com'), (10, 'Juan Franco', 'juanfranco@gmail.com');

CREATE TABLE notas (
  id int(10) unsigned NOT NULL auto_increment primary key,
  titulo VARCHAR(100) NOT NULL,
  fecha_creacion DATE NULL,
  fecha_modificacion DATE NULL,
  descripcion TEXT NULL,
  categoriasID INT(10) unsigned NOT NULL
)

INSERT INTO notas VALUES (1, 'hola', NULL, NULL, 'asdfasdf', 1),(2, 'hola', NULL, NULL, 'asdfasdf', 2),(3, 'hola', NULL, NULL, 'asdfasdf', 3),(4, 'hola', NULL, NULL, 'asdfasdf', 4),(5, 'hola', NULL, NULL, 'asdfasdf', 5),(6, 'hola', NULL, NULL, 'asdfasdf', 6),(7, 'hola', NULL, NULL, 'asdfasdf', 7),(8, 'hola', NULL, NULL, 'asdfasdf', 8),(9, 'hola', NULL, NULL, 'asdfasdf', 9),(10, 'hola', NULL, NULL, 'asdfasdf', 10);

CREATE TABLE categorias (
  id int(10) unsigned NOT NULL auto_increment primary key,
  categoria VARCHAR(50) NOT NULL
)

INSERT INTO categorias VALUES (1, 'esto es una categoria'),(2, 'esto es una categoria'),(3, 'esto es una categoria'),(4, 'esto es una categoria'),(5, 'esto es una categoria'),(6, 'esto es una categoria'),(7, 'esto es una categoria'),(8, 'esto es una categoria'),(9, 'esto es una categoria'),(10, 'esto es una categoria');

CREATE TABLE registros (
  id int(10) unsigned NOT NULL auto_increment primary key,
  usuarioID int(10) unsigned NOT NULL,
  notasID int(10) unsigned NOT NULL,
  gestion tinyint NOT NULL,
  fecha_gestion DATE NULL
)

INSERT INTO registros VALUES (1,1,1,0,NULL), (2,2,2,1,NULL),(3,3,3,0,NULL),(4,4,4,0,NULL),(5,5,5,1,NULL),(6,6,6,1,NULL),(7,7,7,1,NULL),(8,8,8,0,NULL),(9,9,9,1,NULL),(10,10,10,1,NULL);