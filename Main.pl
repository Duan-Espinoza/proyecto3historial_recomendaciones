% Base de conocimiento
% Aquí se definen las producciones, usuarios y su historial de reproducciones.

% Menú Principal
inicio :-
    writeln('Bienvenido al sistema'),
    writeln('1. Opciones Administrativas'),
    writeln('2. Opciones Generales'),
    writeln('3. Salir'),
    read(Opcion),
    ejecutar_opcion(Opcion).

% Ejecutar opción seleccionada en Menú Principal
ejecutar_opcion(1) :-
    writeln('1. Gestión de películas'),
    writeln('2. Gestión de series'),
    writeln('3. Gestión de canciones'),
    writeln('4. Gestión de usuarios'),
    writeln('5. Ver historial de reproducciones'),
    writeln('6. Regresar al Menú Principal'),
    read(Opcion),
    ejecutar_opcion_administrativa(Opcion).

ejecutar_opcion(2) :-
    writeln('1. Buscar producción'),
    writeln('2. Recomendar'),
    writeln('3. Registrar actividad'),
    writeln('4. Regresar al Menú Principal'),
    read(Opcion),
    ejecutar_opcion_general(Opcion).

ejecutar_opcion(3) :-
    writeln('Gracias por usar el sistema. Hasta pronto!').

ejecutar_opcion(_) :-
    writeln('Opción inválida. Intente de nuevo.'),
    inicio.

% Ejecutar opción seleccionada en Menú Administrativo
ejecutar_opcion_administrativa(1) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(1).

ejecutar_opcion_administrativa(2) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(1).

ejecutar_opcion_administrativa(3) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(1).

ejecutar_opcion_administrativa(4) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(1).

ejecutar_opcion_administrativa(5) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(1).

ejecutar_opcion_administrativa(6) :-
    inicio.

ejecutar_opcion_administrativa(_) :-
    writeln('Opción inválida. Intente de nuevo.'),
    ejecutar_opcion(1).

% Ejecutar opción seleccionada en Menú General
ejecutar_opcion_general(1) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(2).

ejecutar_opcion_general(2) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(2).

ejecutar_opcion_general(3) :-
    writeln('Opción no implementada.'),
    ejecutar_opcion(2).

ejecutar_opcion_general(4) :-
    inicio.

ejecutar_opcion_general(_) :-
    writeln('Opción inválida. Intente de nuevo.'),
    ejecutar_opcion(2).
