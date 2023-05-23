% Proyecto programado 3
% Curso lenguajes de programacion
% Autores: Jordano Escalante y Duan Espinoza


% Base de conocimiento
% Aqui se definen las producciones, usuarios y su historial de reproducciones.

% Menu Principal----------------------------------------------------------------------------------------------------------------------------------------------------
% Entradas: Ninguna
% Salidas: Muestra el menu Principal
% Restricciones: el menu se despliega al ser consultado el predicado inicio desde la consola de swi prolog
% Objetivo: Mostrar el menu principal
%-
inicio :-
    writeln('*********************************************'),
    writeln('Bienvenido al sistema'),
    writeln('1. Opciones Administrativas'),
    writeln('2. Opciones Generales'),
    writeln('3. Salir'),
    read(Opcion),
    ejecutar_opcion(Opcion).

% Menu de opciones administrativas--------------------------------------------------------------------------------------------------------------------------
% Entradas: Un entero que indica que el usuario selecciono este sub menu en el menu principal
% Salidas: Despliega las opciones del menu administrativo
% Restricciones: El usuario debe indicar el la opcion del menu que coincida con las opciones
% Objetivo: Mostrar al usuario las opciones del menu administrativo
%-
ejecutar_opcion(1) :-
    writeln('*********************************************'),
    writeln('1. Gestion de peliculas'),
    writeln('2. Gestion de series'),
    writeln('3. Gestion de canciones'),
    writeln('4. Gestion de usuarios'),
    writeln('5. Ver historial de reproducciones'),
    writeln('6. Regresar al Menu Principal'),
    read(Opcion),
    ejecutar_opcion_administrativa(Opcion).

% Menu de Opciones generales-------------------------------------------------------------------------------------------------------------------------------
% Entradas: Un entero que indica que el usuario selecciono este sub menu en el menu principal
% Salidas: Despliega las opciones del menu general
% Restricciones: El usuario debe indicar el la opcion del menu que coincida con las opciones
% Objetivo: Mostrar al usuario las opciones del menu general
%-
ejecutar_opcion(2) :-
    writeln('*********************************************'),
    writeln('1. Buscar produccion'),
    writeln('2. Recomendar'),
    writeln('3. Registrar actividad'),
    writeln('4. Regresar al Menu Principal'),
    read(Opcion),
    ejecutar_opcion_general(Opcion).

% Entradas: Un entero que indica que el usuario selecciono este sub menu en el menu principal
% Salidas: Muestra un mensaje de despedida al salir del sistema
% Restricciones: Ninguna
% Objetivo: Mostrar un mensaje de despedida
%-
ejecutar_opcion(3) :-
    writeln('Gracias por usar el sistema. Hasta pronto!').

% Entradas: Cualquier caracter
% Salidas: Muestra un mensaje de error
% Restricciones: Ninguna
% Objetivo: Indicar al usuario que ha seleccionado una opcion incorrecta dentro del menu principal
%-
ejecutar_opcion(_) :-
    writeln('Opcion invalida. Intente de nuevo.'),
    inicio.


% Ejecutar opciones seleccionadas en el Menu Administrativo---------------------------------------------------------------------------------------------
% Entradas: Un entero que indica que el usuario selecciono esta opcion en el menu administrativo
% Salidas: Mostrar al usuario el menu de gestion de peliculas    
% Restricciones: Por cada pelicula el usuario debe indicar el nombre, genero, actor principal y director
% Objetivo: Permitir al usuario la gestion de peliculas
%-
ejecutar_opcion_administrativa(1) :-
    writeln('*********************************************'),
    writeln('Mostrar lista de peliculas.'),
    writeln('Agregar pelicula.'),
    writeln('Regresar al menu administrativo'),
    ejecutar_opcion(1).

% Entradas:  Un entero que indica que el usuario selecciono esta opcion en el menu administrativo
% Salidas: Muestra al usuario el menu de gestion de series
% Restricciones: El usuario debe indicar el nombre,     genero, actor principal y director de la pelicula
% Objetivo: Permitir al usuario la gestion de series
%-
ejecutar_opcion_administrativa(2) :-
    writeln('**********************************************'),
    writeln('Mostrar lista de series.'),
    writeln('Agregar nueva serie'),
    writeln('Regresar al menu administrativo'),
    ejecutar_opcion(1).

% Entradas: Un entero
% Salidas: Despliega al usuario el menu para agregar una nueva cancion
% Restricciones: Para cada cancion el usuario debe indicar el nombre, genero, cantante y productor
% Objetivo: Permitir al usuario gestionar las canciones
%-
ejecutar_opcion_administrativa(3) :-
    writeln('***********************************************'),
    writeln('Mostrar la lista de canciones'),
    writeln('Agregar una nueva cancion'),
    writeln('Regresar al menu administrativo'),
    ejecutar_opcion(1).

% Entradas: Un valor entero
% Salidas: Muestra el menu de gestion de usuarios
% Restricciones:  Por cada nuevo usuario el administrador debe indicar el nombre 
% --------------  Para peliculas debe indicar 8 numeros entre 1 y 10 para definir su afinidad con los generos de peliculas
% --------------  Para series debe indicar 9 numeros entre 1 y 10 para definir su afinidad con los generos de series
% --------------  Para canciones debe indicar 8 numeros entre 1 y 10 para definir su afinidad con los generos musicales
% Objetivo: Permitir al administrador agregar nuevos usuarios a la base de conocimientos
%-
ejecutar_opcion_administrativa(4) :-
    writeln('************************************************'),
    writeln('Mostrar Lista de Usuarios'),
    writeln('Agregar un nuevo usuario'),
    writeln('Regresar al menu administrativo'),
    ejecutar_opcion(1).

% Entradas: Un entero
% Salidas: Muestra el historial de reproducciones de la base de datos
% Restricciones: Se muestra el nombre de usuario, tipo de produccion, nombre del titulo y la calificacion asignada por el usuario
% Objetivo: Permitir al administrador ver todas las reproducciones hechas por los usuarios
%-
ejecutar_opcion_administrativa(5) :-
    writeln('***********************************************'),
    writeln('Historial de reproducciones'),
    writeln('Nombre del usuario            Tipo de produccion              Nombre del Titulo             Calificacion asignada por el usuario'),
    ejecutar_opcion(1).

% Entradas: Un entero
% Salidas: Regresa al menu principal
% Restricciones: Ninguna
% Objetivo: Permitir al usuario regresar al menu principal
%-
ejecutar_opcion_administrativa(6) :-
    inicio.

% Entradas: Un entero
% Salidas: Un mensaje de error
% Restricciones: Ninguna
% Objetivo: Indicar la usuario que esta ingresando una opcion invalida
%-
ejecutar_opcion_administrativa(_) :-
    writeln('Opcion invalida. Intente de nuevo.'),
    ejecutar_opcion(1).


% Ejecutar opciones seleccionadas en el Menu General--------------------------------------------------------------------------------------------------------------------
% Entradas: Un entero
% Salidas: Despliega el menu general
% Restricciones: El usuario debe indicar una de las opciones disponibles
% Objetivo: Permitir al usuario utilizar el menu de opciones generales
%-
ejecutar_opcion_general(1) :-
    writeln('-------------------------------------------------------------------------'),
    writeln('Buscar pelicula'),
    writeln('Buscar serie'),
    writeln('Buscar cancion'),
    writeln('Regresar al menu general'),
    ejecutar_opcion(2).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 
%-
ejecutar_opcion_general(2) :-
    writeln('-------------------------------------------------------------------------'),
    writeln('Recomendaciones'),
    writeln('Regresar al menu general'),
    ejecutar_opcion(2).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 
%-
ejecutar_opcion_general(3) :-
    writeln('-------------------------------------------------------------------------'),
    writeln('Registrar reproduccion'),
    writeln('Regresar al menu general'),
    ejecutar_opcion(2).

% Entradas: Un entero
% Salidas: Regresa a menu principal
% Restricciones: Ninguna
% Objetivo: Permitir al usuario regresar al menu principal
%-
ejecutar_opcion_general(4) :-
    inicio.

% Entradas: Un entero
% Salidas: Un mensaje en consola
% Restricciones: Ninguna
% Objetivo: Indicar al usuario un error al indicar la opcion
%-
ejecutar_opcion_general(_) :-
    writeln('Opcion invalida. Intente de nuevo.'),
    ejecutar_opcion(2).

%-------------------------------------------------------------------------------------------------------------
%--------------------------------- Menus para funcionalidades concretas---------------------------------------
%-------------------------------------------------------------------------------------------------------------

% Opciones del menu de peliculas------------------------------------------------------------------------------------------------------------------------------
% Entradas: Un entero
% Salidas: Muestra la lista de todas las peliculas de la base de datos
% Restricciones: Ninguna
% Objetivo: Permitir al administrador consultar todas las peliculas de la base de datos
%-
ejecutarMenuPeliculas(1):-
    writeln('*****************************************************'),
    writeln('Se muestran todas las peliculas en la base de datos').

% Entradas: Un entero
% Salidas: Permite a el usuario agregar una pelicula nueva
% Restricciones: El usuario debe indicar el nombre, genero,actor principal y director de la pelicula
% Objetivo: Ampliar la base de conocimientos sobre peliculas
%-
ejecutarMenuPeliculas(2):-
    writeln('*****************************************************'),
    writeln('Agregar nueva pelicula').

% Entradas: Un entero
% Salidas: Retorna del menu de pelicula al menu administrativo
% Restricciones: El usuario debe indicar la opcion de volver
% Objetivo: Regresar el usuario d elas opciones de gestion de peliculas a las opciones administrativas
%-
ejecutarMenuPeliculas(3):-
ejecutar_opcion(1).

% Entradas: Cualquier caracter
% Salidas: Imprime un mensaje de error de input
% Restricciones: Ninguna
% Objetivo: Indicar al usuario que la opcion ingresada no es valida
%-
ejecutarMenuPeliculas(_):-
    writeln('Opcion invalida, intente de nuevo.'),
    ejecutar_opcion_administrativa(1).


