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


% Cargar los modulos
:- consult('GestionOfMovies.pl').
:- consult('GestionDeSeries.pl').
:- consult('GestionOfSongs.pl').
:- consult('GestionUsers.pl').
:- consult('Historial.pl').
:- consult('RegistraLaReproduccion.pl').
:- consult('Recomendar.pl').


% Predicado principal que inicia el programa
inicio :- menu_principal.

% Agregar directiva de codificación UTF-8
:- encoding(utf8).

% Predicado que muestra el menú principal y recibe la elección del usuario
menu_principal :-
  write('Seleccione una opción:'), nl,
  write('1. Menú Administrativo'), nl,
  write('2. Menú General'), nl,
  write('3. Salir'), nl,
  read(Eleccion),
  opcion_principal(Eleccion).

% Predicado que se llama según la elección del usuario en el menú principal
opcion_principal(1) :-
  menu_administrativo,
  menu_principal.

opcion_principal(2) :-
  menu_general,
  menu_principal.

opcion_principal(3) :-
  write('Saliendo del sistema.'), nl.

opcion_principal(_) :-
  write('Opción no válida.'), nl,
  menu_principal.

% Menú administrativo
menu_administrativo :- 
  write('Seleccione una opción:'), nl,
  write('1. Gestión de películas'), nl,
  write('2. Gestión de series'), nl,
  write('3. Gestión de canciones'), nl,
  write('4. Gestión de usuarios'), nl,
  write('5. Ver historial de reproducciones'), nl,
  write('6. Volver al menú principal'), nl,
  read(Eleccion),
  opcion_administrativo(Eleccion).

% Predicado que se llama según la elección del usuario en el menú administrativo
opcion_administrativo(1) :-
  write('Ha elegido la opción 1 (Gestión de películas).'), nl,
  menu_peliculas.

opcion_administrativo(2) :-
  write('Ha elegido la opción 2 (Gestión de series).'), nl,
  menu_series.

opcion_administrativo(3) :-
  write('Ha elegido la opción 3 (Gestión de canciones).'), nl,
  menu_canciones.

opcion_administrativo(4) :-
  write('Ha elegido la opción 4 (Gestión de usuarios).'), nl,
  menu_usuarios.

opcion_administrativo(5) :-
  write('Ha elegido la opción 5 (Ver historial de reproducciones).'), nl,
  menu_historial.

opcion_administrativo(6) :-
  write('Volviendo al menú principal.'), nl.

opcion_administrativo(_) :-
  write('Opción no válida.'), nl,
  menu_administrativo.

% Menú de gestión de películas
menu_peliculas :-
  write('Seleccione una opción:'), nl,
  write('1. Agregar película'), nl,
  write('2. Mostrar películas'), nl,
  write('3. Volver al menú administrativo'), nl,
  read(Eleccion),
  opcion_peliculas(Eleccion).

% Predicado que se llama según la elección del usuario en el menú de gestión de películas
opcion_peliculas(1) :-
  insert_peliculas,
  menu_peliculas.

opcion_peliculas(2) :-
  mostrar_peliculas,
  menu_peliculas.

opcion_peliculas(3) :-
  write('Volviendo al menú administrativo.'), nl,
  menu_administrativo.

% Menú de gestión de series
menu_series :-
  write('Seleccione una opción:'), nl,
  write('1. Agregar serie'), nl,
  write('2. Mostrar series'), nl,
  write('3. Volver al menú administrativo'), nl,
  read(Eleccion),
  opcion_series(Eleccion).

% Predicado que se llama según la elección del usuario en el menú de gestión de series
opcion_series(1) :-
  insert_series,
  menu_series.

opcion_series(2) :-
  mostrar_series,
  menu_series.

opcion_series(3) :-
  write('Volviendo al menú administrativo.'), nl,
  menu_administrativo.

% Menú de gestión de canciones
menu_canciones :-
  write('Seleccione una opción:'), nl,
  write('1. Agregar canción'), nl,
  write('2. Mostrar canciones'), nl,
  write('3. Volver al menú administrativo'), nl,
  read(Eleccion),
  opcion_canciones(Eleccion).

% Predicado que se llama según la elección del usuario en el menú de gestión de canciones
opcion_canciones(1) :-
  insert_canciones,
  menu_canciones.

opcion_canciones(2) :-
  mostrar_canciones,
  menu_canciones.

opcion_canciones(3) :-
  write('Volviendo al menú administrativo.'), nl,
  menu_administrativo.

% Menú de gestión de usuarios
menu_usuarios :-
  write('Seleccione una opción:'), nl,
  write('1. Agregar usuario'), nl,
  write('2. Mostrar usuarios'), nl,
  write('3. Volver al menú administrativo'), nl,
  read(Eleccion),
  opcion_usuarios(Eleccion).

% Predicado que se llama según la elección del usuario en el menú de gestión de usuarios
opcion_usuarios(1) :-
  agregar_usuario,
  menu_usuarios.

opcion_usuarios(2) :-
  mostrar_usuarios,
  menu_usuarios.

opcion_usuarios(3) :-
  write('Volviendo al menú administrativo.'), nl,
  menu_administrativo.

% Menú de historial
menu_historial :-
  write('Seleccione una opción:'), nl,
  write('1. Ver historial de reproducciones'), nl,
  write('2. Volver al menú administrativo'), nl,
  read(Eleccion),
  opcion_historial(Eleccion).

% Predicado que se llama según la elección del usuario en el menú de historial
opcion_historial(1) :-
  ver_historial,
  menu_historial.

opcion_historial(2) :-
  write('Volviendo al menú administrativo.'), nl,
  menu_administrativo.

opcion_historial(_) :-
  write('Opción no válida.'), nl,
  menu_historial.

% Menú general
menu_general :-
  write('Seleccione una opción:'), nl,
  write('1. Buscar producción'), nl,
  write('2. Recomendar'), nl,
  write('3. Registrar reproducción'), nl,
  write('4. Volver al menú principal'), nl,
  read(Eleccion),
  opcion_general(Eleccion).

% Predicado que se llama según la elección del usuario en el menú general
opcion_general(1) :-
  write('Ha elegido la opción 1 (Buscar producción).'), nl,
  % Aquí iría el código correspondiente a buscar producciones
  menu_general.

opcion_general(2) :-
  write('Ha elegido la opción 2 (Recomendar).'), nl,
  write('Ingrese el nombre de usuario: '),
  read(Usuario),
  recomendar_titulos(Usuario),
  menu_general.


opcion_general(3) :-
  write('Ha elegido la opción 3 (Registrar reproducción).'), nl,
  write('Ingrese el nombre de usuario: '),
  read(Usuario),
  write('Ingrese el título de la producción: '),
  read(Titulo),
  registrar_reproduccion(Usuario, Titulo),
  menu_general.

opcion_general(4) :-
  write('Volviendo al menú principal.'), nl.

opcion_general(_) :-
  write('Opción no válida.'), nl,
  menu_general.

% Predicado principal que inicia el programa
inicio :-
  menu_principal.

% Predicado que muestra el menú principal y recibe la elección del usuario
menu_principal :-
  write('Seleccione una opción:'), nl,
  write('1. Menú Administrativo'), nl,
  write('2. Menú General'), nl,
  write('3. Salir'), nl,
  read(Eleccion),
  opcion_principal(Eleccion).

% Predicado que se llama según la elección del usuario en el menú principal
opcion_principal(1) :-
  menu_administrativo,
  menu_principal.

opcion_principal(2) :-
  menu_general,
  menu_principal.

opcion_principal(3) :-
  write('Saliendo del sistema.'), nl.

opcion_principal(_) :-
  write('Opción no válida.'), nl,
  menu_principal.

% Agregar directiva de codificación UTF-8
:- encoding(utf8).

% Cargar los modulos
:- consult('GestionOfMovies.pl').
:- consult('GestionDeSeries.pl').
:- consult('GestionOfSongs.pl').
:- consult('GestionUsers.pl').
:- consult('Historial.pl').

% Predicado para insertar una película
insert_peliculas :-
  write('Ingrese el título de la película: '),
  read(Titulo),
  write('Ingrese el año de lanzamiento: '),
  read(Anio),
  write('Ingrese el género de la película: '),
  read(Genero),
  write('Ingrese el director de la película: '),
  read(Director),
  write('Ingrese la duración de la película (en minutos): '),
  read(Duracion),
  assertz(pelicula(Titulo, Anio, Genero, Director, Duracion)),
  write('Película agregada correctamente.'), nl.

% Predicado para mostrar todas las películas
mostrar_peliculas :-
  pelicula(Titulo, Anio, Genero, Director, Duracion),
  format('Título: ~w~nAño: ~w~nGénero: ~w~nDirector: ~w~nDuración: ~w minutos~n~n', [Titulo, Anio, Genero, Director, Duracion]),
  fail. % falla intencionalmente para detener la busqueda

mostrar_peliculas :-
  write('No hay más películas registradas.'), nl.

% Predicado para insertar una serie
insert_series :-
  write('Ingrese el título de la serie: '),
  read(Titulo),
  write('Ingrese el año de lanzamiento: '),
  read(Anio),
  write('Ingrese el género de la serie: '),
  read(Genero),
  write('Ingrese el número de temporadas: '),
  read(Temporadas),
  write('Ingrese el número de episodios por temporada: '),
  read(Episodios),
  assertz(serie(Titulo, Anio, Genero, Temporadas, Episodios)),
  write('Serie agregada correctamente.'), nl.

% Predicado para mostrar todas las series
mostrar_series :-
  serie(Titulo, Anio, Genero, Temporadas, Episodios),
  format('Título: ~w~nAño: ~w~nGénero: ~w~nTemporadas: ~w~nEpisodios por temporada: ~w~n~n', [Titulo, Anio, Genero, Temporadas, Episodios]),
  fail. % falla intencionalmente para que detener la busqueda

mostrar_series :-
  write('No hay más series registradas.'), nl.

% Predicado para insertar una canción
insert_canciones :-
  write('Ingrese el título de la canción: '),
  read(Titulo),
  write('Ingrese el artista: '),
  read(Artista),
  write('Ingrese el género de la canción: '),
  read(Genero),
  write('Ingrese la duración de la canción (en minutos): '),
  read(Duracion),
  assertz(cancion(Titulo, Artista, Genero, Duracion)),
  write('Canción agregada correctamente.'), nl.

% Predicado para mostrar todas las canciones
mostrar_canciones :-
  cancion(Titulo, Artista, Genero, Duracion),
  format('Título: ~w~nArtista: ~w~nGénero: ~w~nDuración: ~w minutos~n~n', [Titulo, Artista, Genero, Duracion]),
  fail. % falla intencionalmente para detener la busqueda

mostrar_canciones :-
  write('No hay más canciones registradas.'), nl.

% Predicado para agregar un usuario
agregar_usuario :-
  write('Ingrese el nombre de usuario: '),
  read(NombreUsuario),
  write('Ingrese la contraseña: '),
  read(Contrasena),
  assertz(usuario(NombreUsuario, Contrasena)),
  write('Usuario agregado correctamente.'), nl.

% Predicado para mostrar todos los usuarios
mostrar_usuarios :-
  usuario(NombreUsuario, Contrasena),
  format('Nombre de usuario: ~w~nContraseña: ~w~n~n', [NombreUsuario, Contrasena]),
  fail. % falla intencionalmente para detener la busqueda

mostrar_usuarios :-
  write('No hay más usuarios registrados.'), nl.

% Predicado para ver el historial de reproducciones
ver_historial :-
  reproduccion(Usuario, Titulo),
  format('Usuario: ~w~nTítulo: ~w~n~n', [Usuario, Titulo]),
  fail. % falla intencional para detener la busqueda

ver_historial :-
  write('No hay más reproducciones en el historial.'), nl.
