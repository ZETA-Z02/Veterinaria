# Base de datos Veterinaria Fernando 

## Entidades 

### Login
- idlogin INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY
- idpersonal INT FOREIGN KEY
- usuario NOT NULL VARCHAR(15)
- password NOT NULL VARCHAR(300)
- nivel NOT NULL TINYINT
- estado NOT NULL TINYINT
### Personal 
- idpersonal INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY
- nombre NOT NULL VARCHAR(50)
- apellido NOT NULL VARCHAR(50)
- dni NOT NULL UNIQUE VARCHAR(8)
- telefono NULL VARCHAR(12)
- direccion NULL VARCHAR(30)
### Cliente
- idcliente INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY
- nombre NOT NULL VARCHAR(50)
- apellido NOT NULL VARCHAR(50)
- dni NOT NULL VARCHAR(8)
- telefono NULL VARCHAR(12)
### Mascota
- idmascota INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY
- idcliente FOREIGN KEY NOT NULL
- nombre VARCHAR(50)
- especie NULL VARCHAR(50)
- raza NULL VARCHAR(50)
### Cita
- idcita INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY
- idcliente INT NOT NULL FOREIGN KEY
- idmascota INT NOT NULL FOREIGN KEY
- fecha DATE 
- hora HOUR
- estado TINYINT
 
# SQL 

- CREATE TABLE personal(
    idpersonal INT NOT NULL AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL, 
    dni VARCHAR(8) NOT NULL UNIQUE, 
    telefono VARCHAR(12) NULL, 
    direccion VARCHAR(50) NULL);

- CREATE TABLE login (
    idlogin INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idpersonal INT NOT NULL,
    usuario VARCHAR(15) NOT NULL,
    password VARCHAR(300) NOT NULL,
    nivel TINYINT NULL DEFAULT 1,
    estado TINYINT NULL DEFAULT 1,
    FOREIGN KEY (idpersonal) REFERENCES personal(idpersonal)
);
- CREATE TABLE cliente(
    idcliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL, 
    dni VARCHAR(8) NOT NULL, 
    telefono VARCHAR(12) NULL
);
- CREATE TABLE mascota(
    idmascota INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idcliente INT,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(50) NULL,
    raza VARCHAR(50) NULL,
    FOREIGN KEY (idcliente) REFERENCES cliente(idcliente)
);
- CREATE TABLE citas(
    idcita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idcliente INT,
    idmascota INT NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    estado TINYINT NOT NULL DEFAULT 0,
    FOREIGN KEY (idcliente) REFERENCES cliente(idcliente),
    FOREIGN KEY (idmascota) REFERENCES mascota(idmascota)
);