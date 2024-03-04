CREATE TABLE profesores (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    aceptado BOOLEAN,
    gestion_id INT,
    FOREIGN KEY (gestion_id) REFERENCES gestions(id)
);

CREATE TABLE alumnos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    aceptado BOOLEAN,
    FOREIGN KEY (id) REFERENCES profesores(id)
);