% Predicado para agregar una serie a la base de conocimiento
agregar_serie(Nombre, Genero, Actor, Director) :-
    genero_valido_serie(Genero), % Verificar que el género sea válido
    assertz(serie(Nombre, Genero, Actor, Director)), % Agregar la serie como un hecho en la base de conocimiento
    write('La serie ha sido agregada a la base de conocimiento.').

% Verificar si un género es válido para una serie
genero_valido_serie(drama).
genero_valido_serie(comedia).
genero_valido_serie(fantasia).
genero_valido_serie(terror).
genero_valido_serie(suspenso).
genero_valido_serie(musical).
genero_valido_serie(historia).
genero_valido_serie(accion).
genero_valido_serie(reality_show).
genero_valido_serie(Genero) :-
    write('El género ingresado no es válido para una serie.'),
    fail.

% Mostrar todas las series almacenadas en la base de conocimiento
mostrar_series :-
    findall(serie(Nombre, Genero, Actor, Director), serie(Nombre, Genero, Actor, Director), Series),
    mostrar_lista_series(Series).

% Mostrar una lista de series
mostrar_lista_series([]).
mostrar_lista_series([Serie|Resto]) :-
    write(Serie), nl,
    mostrar_lista_series(Resto).
