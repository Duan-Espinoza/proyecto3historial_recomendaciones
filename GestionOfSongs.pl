% Agregar directiva de codificación UTF-8
:- encoding(utf8).
% Declaración dynamic para el predicado cancion/4
:- dynamic cancion/4.

% Predicado para verificar que el género sea válido 
% Generos usados para la validacion
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

% Entrada: Datos de usuario
% Salida Ingresa la canción a la base de conocimiento 
% Restricciones: Genero valido
insertar_cancion :-  
    write('Agregar canción:'), nl,
    write('Nombre: '),
    read(Nombre),
    write('Género: '),
    read(Genero),
    genero_valido(Genero), % valida que el género sea válido
    write('Artista: '),
    read(Artista),
    write('Productor: '),
    read(Productor),
    agregar_cancion(Nombre, Genero, Artista, Productor), % agrega la canción a la base de conocimiento
    write('La canción ha sido agregada a la base de conocimiento.'), nl.

% Predicado para agregar una canción a la BC 
% E: Parametros
% S: Datos en BC
% R: ....................
agregar_cancion(Nombre, Genero, Artista, Productor) :-
    genero_valido(Genero),
    % Agregar la canción como un hecho en la base de conocimiento
    assertz(cancion(Nombre, Genero, Artista, Productor)).

% Mostrar todas las canciones almacenadas en la base de conocimiento
% E: Parametros
% S: Datos en consola
% R: ......................
mostrar_canciones :-
    % Encontrar todas las canciones que están almacenadas en la base de conocimiento
    findall(cancion(Nombre, Genero, Artista, Productor), cancion(Nombre, Genero, Artista, Productor), Canciones),
    % Verificar si la lista de canciones está vacía
    (   Canciones = []
    ->  write('No hay canciones almacenadas en la base de conocimiento.')
    ;   % Mostrar cada canción en una línea diferente
        imprimir_canciones(Canciones)
    ).

% Mostrar una lista de canciones
% E: Parametros
% S: Datos en consola
% R: ......................
imprimir_canciones([]).
imprimir_canciones([Cancion|Canciones]) :-
    write(Cancion), nl,
    imprimir_canciones(Canciones).

% **************Referencias**************
% https://www.swi-prolog.org/pldoc/man?predicate=dynamic%2f1
% https://stackoverflow.com/questions/2426678/dynamic-predicate-in-prolog
% https://www.educba.com/prolog-assert/
% https://stackoverflow.com/questions/65851820/how-to-set-the-utf-8-for-the-code-file-pl-in-swi-prolog-desktop