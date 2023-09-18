-- Crea la base de datos si no existe
CREATE DATABASE IF NOT EXISTS mi_base_de_datos;

-- Utiliza la base de datos
USE mi_base_de_datos;

-- Crea la tabla de usuarios
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

-- Inserta algunos datos de ejemplo
INSERT INTO usuarios (nombre, email) VALUES
  ('Glisse Jorge', 'glisse@example.com'),
  ('Ken Esparta', 'ken@example.com'),
  ('Edith Puclla', 'edith@example.com');