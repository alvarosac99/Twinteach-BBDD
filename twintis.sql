CREATE TABLE profesores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    nombreCompleto VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    gestion_id INT
);

CREATE TABLE alumnos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    NombreCompleto VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    profesorPropietario INT NOT NULL,
    FOREIGN KEY (profesorPropietario) REFERENCES profesores(id)
);


CREATE TABLE profesoresAceptados(
    curso INT NOT NULL,
    profesor INT NOT NULL,
    FOREIGN KEY(profesor) REFERENCES profesores(id),
    FOREIGN KEY (curso) REFERENCES  cursos(id)
);

CREATE TABLE alumnosAceptados(
    curso INT NOT NULL,
    profesor INT NOT NULL,
    FOREIGN KEY(profesor) REFERENCES profesores(id),
    FOREIGN KEY (curso) REFERENCES  cursos(id),
    PRIMARY KEY (curso, profesor)
);

CREATE TABLE SOFTSKILLS(
    id INT PRIMARY KEY,
    alumnoEvaluador INT,
    alumnoEvaluado INT,
    evaluacion INT,
    FOREIGN KEY (alumnoEvaluado) REFERENCES alumno(id),
    FOREIGN KEY (alumnoEvaluador) REFERENCES alumno(id)
);

CREATE TABLE ranking (
    id INT PRIMARY KEY,
    clave_cifrada VARCHAR(100),
    alumno_id INT,
    curso_id INT,
    clave_p VARCHAR(100),
    evaluacion INT,
    progreso TINYINT,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE tareas (
    id INT PRIMARY KEY,
    recompensa VARCHAR(100),
    fecha DATE,
    ranking_id INT,
    FOREIGN KEY (ranking_id) REFERENCES ranking(id)
);

CREATE TABLE notas(
    idNota INT PRIMARY KEY,
    alumno INT, 
    nota INT,
    FOREIGN KEY (alumno) REFERENCES alumnos (id)
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