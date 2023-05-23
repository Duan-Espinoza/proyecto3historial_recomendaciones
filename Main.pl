% Base de conocimiento
% Aquí se definen las producciones, usuarios y su historial de reproducciones.

% Menú Principal--------------------------------------------------
% Entradas: Ninguna
% Salidas: Muestra el menu Principal
% Restricciones: el menu se despliega al ser consultado el predicado inicio desde la consola de swi prolog
% Objetivo: Mostrar el menu principal
inicio :-
    writeln('Bienvenido al sistema'),
    writeln('1. Opciones Administrativas'),
    writeln('2. Opciones Generales'),
    writeln('3. Salir'),
    read(Opcion),
    ejecutar_opcion(Opcion).

% Menu de opciones administrativas-----------------------------------
% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion(1) :-
    writeln('1. Gestion de peliculas'),
    writeln('2. Gestion de series'),
    writeln('3. Gestion de canciones'),
    writeln('4. Gestion de usuarios'),
    writeln('5. Ver historial de reproducciones'),
    writeln('6. Regresar al Menu Principal'),
    read(Opcion),
    ejecutar_opcion_administrativa(Opcion).

% Menu de Opciones generales------------------------------------------
% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion(2) :-
    writeln('1. Buscar produccion'),
    writeln('2. Recomendar'),
    writeln('3. Registrar actividad'),
    writeln('4. Regresar al Menu Principal'),
    read(Opcion),
    ejecutar_opcion_general(Opcion).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion(3) :-
    writeln('Gracias por usar el sistema. Hasta pronto!').

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion(_) :-
    writeln('Opcion invalida. Intente de nuevo.'),
    inicio.


% Ejecutar opciones seleccionadas en el Menu Administrativo-----------------------------
% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_administrativa(1) :-
    writeln('Opcion no implementada.'),
    ejecutar_opcion(1).

% Entradas:
% Salidas:
% Restricciones:
% Objetivo: 

ejecutar_opcion_administrativa(2) :-
    writeln('Opcion no implementada.'),
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


% Ejecutar opciones seleccionadas en el Menu General-----------------------------
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
