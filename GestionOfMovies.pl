% Agregar directiva de codificación UTF-8
:- encoding(utf8).

% Declaración dynamic para el predicado pelicula/4
:- dynamic pelicula/4.

% Predicado para verificar que el género sea válido
genero_valido(Genero) :- member(Genero, [accion, comedia, drama, fantasia, terror, suspenso, musical, historia]).

% Ingresa la película
insert_peliculas :-
  write('Agregar película:'), nl,
  write('Nombre: '),
  read(Nombre),
  write('Género: '),
  read(Genero),
  ( genero_valido(Genero) -> true ; ( write('Género inválido.'), nl, fail ) ), % valida que el género sea válido
  write('Actor principal: '),
  read(ActorPrincipal),
  write('Director: '),
  read(Director),
  agregar_pelicula(Nombre, Genero, ActorPrincipal, Director), % agrega la película a la base de conocimiento
  write('La película ha sido agregada a la base de conocimiento.'), nl.

% Predicado para agregar una película a la base de conocimiento
agregar_pelicula(Nombre, Genero, ActorPrincipal, Director) :-
    assertz(pelicula(Nombre, Genero, ActorPrincipal, Director)).

% Mostrar todas las películas almacenadas en la base de conocimiento
mostrar_peliculas :-
    findall(pelicula(Nombre, Genero, ActorPrincipal, Director), pelicula(Nombre, Genero, ActorPrincipal, Director), Peliculas),
    (   Peliculas = []
    ->  write('No hay películas almacenadas en la base de conocimiento.')
    ;   imprimir_peliculas(Peliculas)
    ).

% Mostrar una lista de películas
imprimir_peliculas([]).
imprimir_peliculas([Pelicula|Peliculas]) :-
    write(Pelicula), nl,
    imprimir_peliculas(Peliculas).

% **************Referencias**************
% https://www.swi-prolog.org/pldoc/man?predicate=dynamic%2f1
% https://stackoverflow.com/questions/2426678/dynamic-predicate-in-prolog
% https://www.educba.com/prolog-assert/
% https://stackoverflow.com/questions/65851820/how-to-set-the-utf-8-for-the-code-file-pl-in-swi-prolog-desktop