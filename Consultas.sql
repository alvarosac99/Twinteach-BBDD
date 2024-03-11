--registrarse / iniciar sesion

INSERT INTO alumnos (nombre, nombreCompleto, correo)
VALUES ('nombrecito', 'nombreCompletitio', 'correito');

SELECT nombre, correo
FROM alumnos
WHERE nombre = 'nombrecito' AND correo = 'correito';
--(Se puede elegir entre alumno y profesor, se rellenara la tabla de su correspondiente)


--ya dentro puedes elegir cursos, donde previamente el profesor te haya introducido
--Tienes un inventario para cada curso con todo lo que conlleva

--rankings

--clickar en la pestaña rankings para ver los disponibles del curso
SELECT id
FROM ranking
JOIN cursos ON curso_id = cursos.id
WHERE curso_id = --cursito en el que busca el alumno
;


--en los que hay tareas en las que participan alumnos
--y que dan recompensas dependiendo de la nota en la tarea

--cada vez que atacas o das una softskill te dan un cofre te llega una notificacion (con la fecha y quien lon hizo y lo que és)

--una vez tengas en el inventario x item (llave), tendras acceso a mapa (tabla tierras), donde tendrás una capital, unas tierras
--y unos recuros que se te añadiran al inventario.

--abrir cofre
--atacar
--conquistar terreno
--ver tus sofskill
--comprar en la tienda

--abrir un ranking
--crear un ranking`
--seleccionar ranking entre otros y ver tareas de ese ranking
--mirar notificaciones recientes
--ver clasificion de mapa

--usar item (catalejo, bomba, etc) sobre alguien
--elegir cursos