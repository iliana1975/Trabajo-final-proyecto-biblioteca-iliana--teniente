CREATE DATABASE IF NOT EXISTS proyecto_Biblioteca;
USE proyecto_Biblioteca;

-- Creación de la tabla clientes
CREATE TABLE clientes (
  id_cliente_lector INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  telefono VARCHAR(15) NOT NULL,
  direccion VARCHAR(100),
  mail VARCHAR(100),
  nro_cliente INT NOT NULL
);

-- Creación de la tabla empleados
CREATE TABLE empleados (
  id_empleado INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  fecha_nacimiento DATE,
  nacionalidad VARCHAR(100)
);

-- Creación de la tabla editoriales
CREATE TABLE editoriales (
  id_editorial INT AUTO_INCREMENT PRIMARY KEY,
  nombre_editorial VARCHAR(100),
  direccion VARCHAR(100),
  telefono VARCHAR(15) NOT NULL,
  sucursal VARCHAR(100)
);

-- Creación de la tabla autores
CREATE TABLE autores (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  fecha_nacimiento DATE NOT NULL,
  nacionalidad VARCHAR(100),
  cantidad_libros INT NULL
);

-- Creación de la tabla libros
CREATE TABLE libros (
  id_libro INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  id_autor INT,
  id_editorial INT,
  cantidad_libros INT NULL,
  FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
  FOREIGN KEY (id_editorial) REFERENCES editoriales(id_editorial)
);

-- Creación de la tabla prestamos
CREATE TABLE prestamos (
  id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente_lector INT,
  id_empleado INT,
  id_libro INT,
  fecha_prestamo DATE NOT NULL,
  fecha_devolucion DATE NOT NULL,
  FOREIGN KEY (id_cliente_lector) REFERENCES clientes(id_cliente_lector),
  FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
  FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);

-- Creación de la tabla biblioteca
CREATE TABLE biblioteca (
  id_biblioteca INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  ciudad VARCHAR(100),
  id_libro INT,
  FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);

-- Creación de la tabla venta_libros
CREATE TABLE venta_libros (
  id_venta INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(60),
  precio_venta_libro DECIMAL(15,2),
  costo_libro DECIMAL(15,2),
  id_libro INT UNIQUE,
  FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);

-- Creación de la tabla categorias
CREATE TABLE categorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nombre_categoria VARCHAR(100),
  id_libro INT,
  FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);

-- Inserción en la tabla clientes
INSERT INTO clientes (nombre, apellido, telefono, direccion, mail, nro_cliente) VALUES
('Fernando', 'Ferreyra', '3512000320', 'Roberto Cayol 345', 'f_f@hotmail.com', 1),
('Jeremias', 'Guzmán', '351256456', 'Romulo Carbia 2658', 'J_J@hotmail.com', 2),
('Josue', 'Teniente', '3516985754', 'Tablada 79', 'J_T@hotmail.com', 3),
('Lidia', 'Guzmán', '351785965', 'Romulo Carbia 56', 'L_G@hotmail.com', 4),
('Constantino', 'Mangiafave', '3513695784', 'Flores 54', 'C_M@gmail.com', 5),
('Catalina', 'Mangiafave', '3515986256', 'Duarte Quiros 2115', 'Cata_M@gmail.com', 6),
('Agustin', 'Ferreyra', '3513456734', 'Roberto Cayol 300', 'A_f@hotmail.com', 7);

-- Inserción en la tabla empleados
INSERT INTO empleados (nombre, apellido, fecha_nacimiento, nacionalidad) VALUES
('Luis', 'Perez', '1975-09-20', 'Español'),
('Candelaria', 'Nuñez', '1993-07-12', 'Argentina');

-- Inserción en la tabla autores
INSERT INTO autores (id_autor, nombre, apellido, fecha_nacimiento, nacionalidad) VALUES
(1, 'Vivian', 'Gornick', '1945-05-22', 'EEUU'),
(2, 'Stephen', 'King', '1947-03-12', 'EEUU'),
(3, 'Harper', 'Lee', '1926-11-28', 'EEUU'),
(4, 'Mark', 'Twain', '1949-01-22', 'EEUU'),
(5, 'Edgard Allan', 'Poe', '1936-02-18', 'EEUU'),
(6, 'Gabriel Garcia', 'Márquez', '1927-07-10', 'México'),
(7, 'Jorge Luis', 'Borges', '1899-07-15', 'Argentino'),
(8, 'Mario', 'Vargas Llosa', '1836-08-18', 'Perú'),
(9, 'Leopoldo', 'Marechal', '1900-03-11', 'Argentino'),
(10, 'Isabel', 'Allende', '1942-05-03', 'Chilena'),
(11, 'Pablo', 'Neruda', '1904-07-10', 'Chileno'),
(12, 'Ernesto', 'Sábato', '1911-09-10', 'Argentino');

-- Inserción en la tabla editoriales
INSERT INTO editoriales (id_editorial, nombre_editorial, direccion, telefono, sucursal) VALUES
(1, 'Planeta', 'Av. Libertad 78-Buenos Aires', '0114785968', 'Sucursal 1'),
(2, 'Ediciones', 'Pedro Zanni 45 - Rosario', '0451476585', 'Sucursal 2'),
(3, 'Macmillian', 'Rondeau 55- Córdoba', '3514758695', 'Sucursal 3'),
(4, 'Alfaguara', 'Nuñez 223 - Santa Fe', '0523785475', 'Sucursal 4'),
(5, 'Salamandra', 'Av.Córdoba 876 - Buenos Aires', '0113695456', 'Sucursal 5'),
(6, 'Anagrama', 'Av.Rafael Nuñez 235 - Córdoba', '3515698452', 'Sucursal 6'),
(7, 'Catedra', 'Av.Rafael Nuñez 1568 - Córdoba', '351764548', 'Sucursal 7');

-- Inserción en la tabla libros
INSERT INTO libros (titulo, id_autor, id_editorial, cantidad_libros) VALUES
('Apegos feroces', 1, 1, 5),
('Mirarse de frente', 1, 2, 3),
('La mujer singular y la ciudad', 1, 3, 4),
('El Instituto', 2, 4, 6),
('El Pistolero', 2, 5, 7),
('IT', 2, 6, 10),
('Matar a un Ruiseñor', 3, 7, 8),
('Ve y pone un centinela', 3, 1, 5),
('To kill a Mockingbird', 3, 2, 9),
('Las aventuras de Tom Sawyer', 4, 3, 6),
('El Cuervo', 5, 4, 4),
('El Escarabajo de Oro', 5, 5, 3),
('Cien Años de Soledad', 6, 6, 12),
('Amor en los tiempos de Cólera', 6, 7, 7),
('Noticias de un Secuestro', 6, 1, 8),
('La mirada quieta', 9, 3, 7),
('La Ciudad y los Perros', 9, 4, 8),
('La fiesta del Chivo', 9, 5, 6),
('El Centauro', 10, 6, 4),
('La Casa de los espíritus', 11, 7, 9),
('Más allá del Invierno', 11, 1, 5),
('Cien Sonetos de Amor', 12, 2, 11),
('Canto General', 12, 3, 6),
('El Tunel', 10, 4, 7),
('Sobre Héroes y Tumbas', 11, 5, 8),
('La Resistencia', 12, 6, 5);

-- Inserción en la tabla venta_libros
INSERT INTO venta_libros (titulo, precio_venta_libro, costo_libro, id_libro) VALUES
('Apegos feroces', 800.00, 500.00, 1),
('Mirarse de frente', 1100.00, 700.00, 2),
('La mujer singular y la ciudad', 500.00, 300.00, 3),
('El Instituto', 1800.00, 1500.00, 4),
('El Pistolero', 2600.00, 2300.00, 5),
('IT', 2800.00, 2500.00, 6),
('Matar a un Ruiseñor', 1350.00, 950.00, 7),
('Ve y pone un centinela', 1300.00, 1050.00, 8),
('To kill a Mockingbird', 650.00, 450.00, 9),
('Las aventuras de Tom Sawyer', 1300.00, 1000.00, 10),
('El Cuervo', 1100.00, 850.00, 11),
('El Escarabajo de Oro', 2900.00, 2600.00, 12),
('Cien Años de Soledad', 1800.00, 1500.00, 13),
('Amor en los tiempos de Cólera', 850.00, 650.00, 14),
('Noticias de un Secuestro', 850.00, 550.00, 15),
('La mirada quieta', 900.00, 650.00, 16),
('La Ciudad y los Perros', 1600.00, 1300.00, 17),
('La fiesta del Chivo', 900.00, 650.00, 18),
('El Centauro', 1300.00, 850.00, 19),
('La Casa de los espíritus', 1300.00, 900.00, 20),
('Más allá del Invierno', 1850.00, 1560.00, 21),
('Cien Sonetos de Amor', 1200.00, 800.00, 22),
('Canto General', 1850.00, 1550.00, 23),
('El Tunel', 1350.00, 960.00, 24),
('Sobre Héroes y Tumbas', 650.00, 450.00, 25),
('La Resistencia', 1600.00, 1200.00, 26);

-- Inserción en la tabla prestamos
INSERT INTO prestamos (id_cliente_lector, id_empleado, id_libro, fecha_prestamo, fecha_devolucion) VALUES
(6, 1, 12, '2024-07-22', '2024-07-29'),
(3, 2, 1, '2024-07-22', '2024-07-26'),
(4, 2, 3, '2024-07-22', '2024-07-30'),
(5, 2, 4, '2024-07-22', '2024-07-25'),
(6, 1, 2, '2024-07-22', '2024-07-26'),
(1, 2, 5, '2024-07-22', '2024-07-31'),
(2, 1, 6, '2024-07-22', '2024-07-31'),
(3, 1, 7, '2024-07-22', '2024-07-26'),
(4, 1, 8, '2024-07-22', '2024-07-31'),
(5, 2, 9, '2024-07-22', '2024-08-01');

-- Inserción en la tabla categorias
INSERT INTO categorias (nombre_categoria, id_libro) VALUES
('Drama', 1),
('Romance', 2),
('Poesia', 3),
('Novela', 4),
('Accion', 5),
('Terror', 6),
('Drama', 7),
('Comedia', 8),
('Terror', 9),
('Comedia', 10),
('Terror', 11),
('Drama', 12),
('Novela', 13),
('Romance', 14),
('Accion', 15),
('Accion', 16),
('Poesia', 18),
('Comedia', 19),
('Comedia', 20),
('Terror', 21),
('Terror', 22),
('Romance', 23),
('Poema', 24),
('Drama', 25),
('Terror', 26);


-- Funciones  
-- Función para calcular la ganancia neta
DELIMITER $$

CREATE FUNCTION fn_ganancia_neta(venta_id INT) RETURNS DECIMAL(15,2)
DETERMINISTIC
NO SQL
BEGIN
    DECLARE diferenciaPrecio DECIMAL(15,2);
    SELECT (precio_venta_libro - costo_libro) INTO diferenciaPrecio
    FROM venta_libros
    WHERE id_venta = venta_id;
    RETURN diferenciaPrecio;
END $$

DELIMITER ;

-- Función para obtener la cantidad de libros prestados por cliente
DELIMITER $$

CREATE FUNCTION fn_cantidad_libros_prestados(id_cliente INT) RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE total_libros_prestados INT;
    SELECT COUNT(*) INTO total_libros_prestados 
    FROM prestamos 
    WHERE id_cliente_lector = id_cliente;
    RETURN total_libros_prestados;
END $$

DELIMITER ;
 
 -- Vistas 
 
 -- Vista de clientes
CREATE OR REPLACE VIEW vista_clientes AS 
SELECT nombre, apellido, mail FROM clientes;
SELECT * FROM vista_clientes;

-- Vista de autores
CREATE OR REPLACE VIEW vista_autores AS 
SELECT nombre, nacionalidad FROM autores;
SELECT * FROM vista_autores;

-- Vista de editoriales
CREATE VIEW vista_editoriales AS 
SELECT nombre_editorial FROM editoriales;
SELECT * FROM vista_editoriales;

-- Vista de empleados
CREATE VIEW vista_empleados AS 
SELECT nombre, nacionalidad FROM empleados;
SELECT * FROM vista_empleados;

-- Vista de libros
CREATE OR REPLACE VIEW vista_libros AS 
SELECT id_libro, titulo, id_autor FROM libros;
SELECT * FROM vista_libros;

-- Vista de prestamos
CREATE OR REPLACE VIEW vista_prestamos AS 
SELECT id_libro, fecha_prestamo, fecha_devolucion FROM prestamos;
SELECT * FROM vista_prestamos;

-- Procedimientos almacenados

-- Procedimiento para obtener todos los clientes
DROP PROCEDURE IF EXISTS sp_get_clientes;

DELIMITER //

CREATE PROCEDURE sp_get_clientes()
BEGIN
    SELECT * FROM clientes;
END //

DELIMITER ;

CALL sp_get_clientes();

-- Procedimiento para obtener todas las editoriales
DROP PROCEDURE IF EXISTS sp_get_editoriales;

DELIMITER //

CREATE PROCEDURE sp_get_editoriales()
BEGIN
    SELECT * FROM editoriales;
END //

DELIMITER ;

CALL sp_get_editoriales();

-- Procedimiento para obtener todos los autores
DROP PROCEDURE IF EXISTS sp_get_autores;

DELIMITER //

CREATE PROCEDURE sp_get_autores()
BEGIN
    SELECT * FROM autores;
END //

DELIMITER ;

CALL sp_get_autores();

-- Procedimiento para obtener todos los libros
DROP PROCEDURE IF EXISTS sp_get_libros;

DELIMITER //

CREATE PROCEDURE sp_get_libros()
BEGIN
    SELECT * FROM libros;
END //

DELIMITER ;

CALL sp_get_libros();

-- Triggers
-- Trigger para registrar inserciones en clientes
DELIMITER //

CREATE TRIGGER tr_cliente_insert
AFTER INSERT ON clientes
FOR EACH ROW
BEGIN
    -- Acción a realizar cuando se inserta un cliente
    INSERT INTO registro_clientes (id_cliente, fecha_registro)
    VALUES (NEW.id_cliente_lector, NOW());
END //

DELIMITER ;

-- Trigger para actualizar la cantidad de libros en autores
DELIMITER $$

CREATE TRIGGER after_insert_libros
AFTER INSERT ON libros 
FOR EACH ROW 
BEGIN
    UPDATE autores
    SET cantidad_libros = cantidad_libros + 1
    WHERE id_autor = NEW.id_autor;
END $$

DELIMITER ;