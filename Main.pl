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
inicio :-
    printAsteriscos(1).
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

ejecutar_opcion(3) :-
    writeln('Gracias por usar el sistema. Hasta pronto!').

% Entradas: Cualquier caracter
% Salidas: Muestra un mensaje de error
% Restricciones: Ninguna
% Objetivo: Indicar al usuario que ha seleccionado una opcion incorrecta dentro del menu principal

ejecutar_opcion(_) :-
    writeln('Opcion invalida. Intente de nuevo.'),
    inicio.


% Ejecutar opciones seleccionadas en el Menu Administrativo---------------------------------------------------------------------------------------------
% Entradas: Un entero que indica que el usuario selecciono esta opcion en el menu administrativo
% Salidas: Mostrar al usuario el menu de gestion de peliculas    
% Restricciones: El usuario debe indicar el la opcion del menu que coincida con las opciones
% Objetivo: Permitir al usuario la gestion de peliculas

ejecutar_opcion_administrativa(1) :-
    writeln('*********************************************'),
    writeln('Mostrar lista de peliculas.'),
    writeln('Agregar pelicula.'),
    writeln('Regresar al menu administrativo'),
    ejecutar_opcion(1).

% Entradas:  Un entero que indica que el usuario selecciono esta opcion en el menu administrativo
% Salidas: Muestra al usuario el menu de gestion de series
% Restricciones: El usuario debe indicar el la opcion del menu que coincida con las opciones
% Objetivo: Permitir al usuario la gestion de series

ejecutar_opcion_administrativa(2) :-
    writeln('**********************************************'),
    writeln('Mostrar lista de series.'),
    writeln('Agregar nueva serie'),
    writeln('Regresar al menu administrativo'),
    ejecutar_opcion(1).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_administrativa(3) :-
    writeln('Opcion no implementada.'),
    ejecutar_opcion(1).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_administrativa(4) :-
    writeln('Opcion no implementada.'),
    ejecutar_opcion(1).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_administrativa(5) :-
    writeln('Opcion no implementada.'),
    ejecutar_opcion(1).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_administrativa(6) :-
    inicio.

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_administrativa(_) :-
    writeln('Opcion invalida. Intente de nuevo.'),
    ejecutar_opcion(1).


% Ejecutar opciones seleccionadas en el Menu General--------------------------------------------------------------------------------------------------------------------
% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_general(1) :-
    writeln('Opcion no implementada.'),
    ejecutar_opcion(2).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_general(2) :-
    writeln('Opcion no implementada.'),
    ejecutar_opcion(2).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_general(3) :-
    writeln('Opcion no implementada.'),
    ejecutar_opcion(2).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_general(4) :-
    inicio.

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_general(_) :-
    writeln('Opcion invalida. Intente de nuevo.'),
    ejecutar_opcion(2).

% Opciones del menu de peliculas------------------------------------------------------------------------------------------------------------------------------
% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutarMenuPeliculas(1):-
    writeln('*****************************************************'),
    writeln('Se muestran todas las peliculas en la base de datos').

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutarMenuPeliculas(2):-
    writeln('*****************************************************'),
    writeln('Agregar nueva pelicula').

% Entradas: Un entero
% Salidas: Retorna del menu de pelicula al menu administrativo
% Restricciones: El usuario debe indicar la opcion de volver
% Objetivo: Regresar el usuario d elas opciones de gestion de peliculas a las opciones administrativas

ejecutarMenuPeliculas(3):-
ejecutar_opcion(1).

% Entradas: Cualquier caracter
% Salidas: Imprime un mensaje de error de input
% Restricciones: Ninguna
% Objetivo: Indicar al usuario que la opcion ingresada no es valida

ejecutarMenuPeliculas(_):-
    writeln('Opcion invalida, intente de nuevo.'),
    ejecutar_opcion_administrativa(1).


