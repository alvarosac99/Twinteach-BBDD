--registrarse / iniciar sesion

INSERT INTO alumnos (nombre, nombreCompleto, correo)
VALUES ('nombrecito', 'nombreCompletitio', 'correito');

SELECT nombre, correo
FROM alumnos
WHERE nombre = 'nombrecito' AND correo = 'correito';
--(Se puede elegir entre alumno y profesor, se rellenara la tabla de su correspondiente)


--ya dentro puedes elegir cursos, donde previamente el profesor te haya introducido
--Tienes un inventario para cada curso con todo lo que conlleva

--clickar en la pestaña rankings para ver los disponibles del curso
SELECT id
FROM ranking
JOIN cursos ON curso_id = cursos.id
WHERE curso_id = --cursito en el que busca el alumno
;

--ver el ranking de esa asignatura
SELECT curso_id, id, alumno, evaluacion
FROM ranking
WHERE id = --asignatura que se quiere mirar
;


--en los que hay tareas en las que participan alumnos
--y que dan recompensas dependiendo de la nota en la tarea

--cada vez que atacas o das una softskill te dan un cofre te llega una notificacion (con la fecha y quien lon hizo y lo que és)

--una vez tengas en el inventario x item (llave), tendras acceso a mapa (tabla tierras), donde tendrás una capital, unas tierras
--y unos recuros que se te añadiran al inventario.

--abrir cofre
SELECT id
FROM inventario
WHERE id = --el id de cualquiera de los cofres
;


--atacar
SELECT id, nombre, nombreCompleto
FROM alumnos
WHERE id = --alumno al que quieres atacar
;


--conquistar terreno
SELECT id
FROM tierras
WHERE id = --tierra seleccionada
;


--ver tus sofskill
SELECT id, evaluacion
FROM SOFTSKILLS
WHERE alumnoEvaluado = --id del usuario
;


--comprar en la tienda
INSERT INTO inventario (id, cantidad, objeto, tipo, alumno_id)
VALUES (/*id del objeto*/, 1, /*nombre*/, /*tipo*/, /*id del alumno*/);


--crear un ranking
INSERT INTO rankings (curso_id)
VALUES (/*id del cursito*/);


--seleccionar ranking entre otros y ver tareas de ese ranking
SELECT t.id AS tarea_id, t.recompensa
FROM tareas t
INNER JOIN ranking r ON t.ranking_id = r.id
WHERE r.id = /*id*/;
--mirar notificaciones recientes
SELECT *
FROM notis
ORDER BY fecha DESC
--ver clasificion de mapa
SELECT *
FROM ranking
WHERE curso_id = /*idcurso*/
ORDER BY evaluacion DESC;
--usar item (catalejo, bomba, etc) sobre alguien
SELECT objeto, alumno_id
FROM inventario
WHERE tipo = 'item'
AND alumno_id = /*id*/;
--elegir cursos
SELECT * FROM cursos 
WHERE nombre= " "/*nombre*/;