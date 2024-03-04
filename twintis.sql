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

CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE ranking (
    id INT PRIMARY KEY,
    clave_cifrada VARCHAR(100),
    alumno_id INT,
    curso_id INT,
    codicia INT,
    clave_p VARCHAR(100),
    evaluacion INT,
    progreso TINYINT,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE tareas (
    id INT PRIMARY KEY,
    recompensa VARCHAR(100),
    nota TINYINT,
    fecha DATE,
    ranking_id INT,
    FOREIGN KEY (ranking_id) REFERENCES ranking(id)
);

CREATE TABLE participan (
    id INT PRIMARY KEY,
    tarea_id INT,
    alumno_id INT,
    FOREIGN KEY (tarea_id) REFERENCES tareas(id),
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id)
);

CREATE TABLE inventario (
    id INT PRIMARY KEY,
    cantidad INT,
    posicion INT,
    objeto VARCHAR(100),
    tipo VARCHAR(100),
    fecha DATE,
    vista BOOLEAN,
    alumno_id INT,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id)
);

CREATE TABLE tierras (
    id INT PRIMARY KEY,
    objeto VARCHAR(100),
    tipo VARCHAR(100),
    fecha DATE,
    vista BOOLEAN,
    inventario_id INT,
    FOREIGN KEY (inventario_id) REFERENCES inventario(id)
);

CREATE TABLE notis (
    id INT PRIMARY KEY,
    fecha DATE,
    inventario_id INT,
    FOREIGN KEY (inventario_id) REFERENCES inventario(id)
);