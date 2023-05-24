% Declaración dynamic para el predicado usuario/4
% Usada para modificar predicados
:- dynamic usuario/4.

% Hechos para almacenar los usuarios y sus preferencias
% usuario(Nombre, [GenerosPeliculas], [GenerosSeries], [GenerosCanciones])
% El cuarto argumento es lista pares (Género, Afinidad)

% Predicado para mostrar todos los usuarios registrados
mostrar_users :-
    findall([Nombre, Peliculas, Series, Canciones], usuario(Nombre, Peliculas, Series, Canciones), Usuarios),
    imprimir_usuarios(Usuarios).

% Predicado para imprimir la información de los usuarios
% E: Parametros
% S: Muestra en consola
% R: ...........
imprimir_usuarios([]).
imprimir_usuarios([[Nombre, Peliculas, Series, Canciones] | Resto]) :-
    write('Nombre: '), write(Nombre), nl,
    write('Películas: '), write(Peliculas), nl,
    write('Series: '), write(Series), nl,
    write('Canciones: '), write(Canciones), nl, nl,
    imprimir_usuarios(Resto).

% Predicado para agregar un nuevo usuario
% E: Parametros
% S: Muestra en consola que ha sido agregado
% R: ...........
agregar_users :-
    write('Ingrese el nombre del usuario: '),
    read(Nombre),
    write('Ingrese los géneros de películas que le gustan (separados por comas): '),
    read(Peliculas),
    write('Ingrese los géneros de series que le gustan (separados por comas): '),
    read(Series),
    write('Ingrese los géneros de canciones que le gustan (separados por comas): '),
    read(Canciones),
    assertz(usuario(Nombre, Peliculas, Series, Canciones)),
    write('Usuario agregado correctamente.').

% **************Referencias**************
% https://www.swi-prolog.org/pldoc/man?predicate=dynamic%2f1
% https://stackoverflow.com/questions/2426678/dynamic-predicate-in-prolog
% https://www.educba.com/prolog-assert/
% https://stackoverflow.com/questions/65851820/how-to-set-the-utf-8-for-the-code-file-pl-in-swi-prolog-desktop
% https://www.swi-prolog.org/pldoc/man?section=encoding