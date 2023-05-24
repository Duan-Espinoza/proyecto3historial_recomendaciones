% Predicado para verificar que el género sea válido
% Generos de series validos
genero_valido(A) :- member(A, [accion, comedia, drama, fantasia, terror, suspenso, musical, historia, reality_show]).

% Ingresa la serie
% E: Datos del usuario
% S: Muestra en consola que ha sido agregado
% R: ........... Valor a agregar a la base de conocimiento.
insert_series :-
    write('Agregar serie:'), nl,
    write('Nombre: '),
    read(Nombre),
    write('Género: '),
    read(Genero),
    genero_valido(Genero), % valida que el género sea válido
    write('Actor principal: '),
    read(Actor),
    write('Director: '),
    read(Director),
    agregar_serie(Nombre, Genero, Actor, Director), % agrega la serie a la base de conocimiento
    write('La serie ha sido agregada a la base de conocimiento.'), nl.

% Predicado para agregar una serie a la base de conocimiento
% E: Parametros
% S: Muestra en consola que ha sido agregado
% R: ........... Valor a agregar a la base de conocimiento.
agregar_serie(Nombre, Genero, Actor, Director) :-
    genero_valido(Genero),
    % Agregar la serie como un hecho en la base de conocimiento
    assertz(serie(Nombre, Genero, Actor, Director)).

% Mostrar todas las series almacenadas en la BC
% E: Parametros
% S: Muestra en consola 
% R: ...........
mostrar_series :-
    % Encontrar todas las series que están almacenadas en la base de conocimiento
    findall(serie(Nombre, Genero, Actor, Director), serie(Nombre, Genero, Actor, Director), Series),
    % Verificar si la lista de series está vacía
    (   Series = []
    ->  write('No hay series almacenadas en la base de conocimiento.')
    ;   % Mostrar cada serie en una línea diferente
        imprimir_series(Series)
    ).

% Mostrar una lista de series
% E: ..................
% S: Muestra en consola las series
% R: ...........
imprimir_series([]).
imprimir_series([Serie|Series]) :-
    write(Serie), nl,
    imprimir_series(Series).

% **************Referencias**************
% https://www.swi-prolog.org/pldoc/man?predicate=dynamic%2f1
% https://stackoverflow.com/questions/2426678/dynamic-predicate-in-prolog
% https://www.educba.com/prolog-assert/
% https://stackoverflow.com/questions/65851820/how-to-set-the-utf-8-for-the-code-file-pl-in-swi-prolog-desktop