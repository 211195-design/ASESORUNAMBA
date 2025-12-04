CREATE DATABASE IF NOT EXISTS asesor_unamba;
USE asesor_unamba;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    password VARCHAR(100),
    rol ENUM('estudiante','admin')
);

CREATE TABLE tramites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    tipo VARCHAR(100),
    estado ENUM('pendiente','en_proceso','completado'),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE mensajes_chat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    mensaje TEXT,
    respuesta TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
