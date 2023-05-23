% Agregar directiva de codificación UTF-8
:- encoding(utf8).
% Declaración dynamic para el predicado cancion/4
:- dynamic cancion/4.

% Predicado para verificar que el género sea válido 
genero_valido(clasica).
genero_valido(jazz).
genero_valido(rhythm).
genero_valido(blues).
genero_valido(rb).
genero_valido(rock).
genero_valido(roll).
genero_valido(country).
genero_valido(pop).
genero_valido(reggae).
genero_valido(hip_hop).

%Ingresa una canción
insertar_cancion :-  
    write('Agregar canción:'), nl,
    write('Nombre: '),
    read(Nombre),
    write('Género: '),
    read(Genero),
    genero_valido(Genero), % valida que el género sea válido
    write('Cantante: '),
    read(Cantante),
    write('Productor: '),
    read(Productor),
    agregar_cancion(Nombre, Genero, Cantante, Productor), % agrega la canción a la base de conocimiento
    write('La canción ha sido agregada a la base de conocimiento.'), nl.

% Predicado para agregar una canción a la base de conocimiento
agregar_cancion(Nombre, Genero, Cantante, Productor) :-
    genero_valido(Genero),
    % Agregar la canción como un hecho en la base de conocimiento
    assertz(cancion(Nombre, Genero, Cantante, Productor)).

% Mostrar todas las canciones almacenadas en la base de conocimiento
mostrar_canciones :-
    % Encontrar todas las canciones que están almacenadas en la base de conocimiento
    findall(cancion(Nombre, Genero, Cantante, Productor), cancion(Nombre, Genero, Cantante, Productor), Canciones),
    % Verificar si la lista de canciones está vacía
    (   Canciones = []
    ->  write('No hay canciones almacenadas en la base de conocimiento.')
    ;   % Mostrar cada canción en una línea diferente
        imprimir_canciones(Canciones)
    ).

% Mostrar una lista de canciones
imprimir_canciones([]).
imprimir_canciones([Cancion|Canciones]) :-
    write(Cancion), nl,
    imprimir_canciones(Canciones).
