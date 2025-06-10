CREATE DATABASE coworking;
GO

-- Usar la base de datos
USE coworking;
GO

-- Tabla tipo de identificación
CREATE TABLE tipo_id (
    tipo_id INT IDENTITY(1,1) PRIMARY KEY,
    nom_id VARCHAR(55) NOT NULL
);

-- Tabla de país
CREATE TABLE pais (
    cod_pais INT IDENTITY(1,1) PRIMARY KEY,
    nom_pais VARCHAR(55) NOT NULL
);

-- Tabla de ciudad
CREATE TABLE ciudad (
    cod_ciudad INT IDENTITY(1,1) PRIMARY KEY,
    nom_ciudad VARCHAR(30) NOT NULL
);

-- Tabla de idioma
CREATE TABLE idioma (
    cod_idioma INT IDENTITY(1,1) PRIMARY KEY,
    nom_idioma VARCHAR(20) NOT NULL
);

-- Tabla de espacio
CREATE TABLE espacio (
    id_espacio INT IDENTITY(1,1) PRIMARY KEY,
    tipo_esp VARCHAR(15) NOT NULL,
    disponibilidad VARCHAR(20),
    valor DECIMAL(10,2)
);

-- Tabla de información coworking
CREATE TABLE info_coworking (
    id_coworking INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    telefono VARCHAR(14) NOT NULL,
    id_espacio INT NOT NULL,
    CONSTRAINT fk_espacio FOREIGN KEY (id_espacio) REFERENCES espacio(id_espacio)
);
-- Tabla de usuario
CREATE TABLE usuario (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    correo VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    cod_idioma INT NOT NULL,
    cod_pais INT NOT NULL,
    cod_ciudad INT NOT NULL,
    tipo_id INT NOT NULL,
    CONSTRAINT fk_cod_idioma FOREIGN KEY (cod_idioma) REFERENCES idioma(cod_idioma),
    CONSTRAINT fk_cod_pais FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais),
    CONSTRAINT fk_cod_ciudad FOREIGN KEY (cod_ciudad) REFERENCES ciudad(cod_ciudad),
    CONSTRAINT fk_tipo_id FOREIGN KEY (tipo_id) REFERENCES tipo_id(tipo_id)
);

-- Tabla de reserva
CREATE TABLE reserva (
    cod_reserva INT IDENTITY(1,1) PRIMARY KEY,
    fecha_in DATE NOT NULL,
    fecha_can DATE NOT NULL,
    id_espacio INT NOT NULL,
    id_coworking INT NOT NULL,
    tiempo VARCHAR(20) NOT NULL,
    id_usuario INT NOT NULL,
    CONSTRAINT fk_id_espacio FOREIGN KEY (id_espacio) REFERENCES espacio(id_espacio),
    CONSTRAINT fk_id_coworking FOREIGN KEY (id_coworking) REFERENCES info_coworking(id_coworking),
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

