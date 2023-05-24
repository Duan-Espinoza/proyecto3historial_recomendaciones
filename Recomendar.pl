% Recomendar.pl

% Importar los modulos de gestión de series, películas, canciones
:- consult('GestionDeSeries.pl').
:- consult('GestionOfMovies.pl').
:- consult('GestionOfSongs.pl').

% Predicado para verificar que el género sea válido
genero_valido(A) :- member(A, [accion, comedia, drama, fantasia, terror, suspenso, musical, historia, reality_show]).

% Predicado para calcular la afinidad por género para las películas
afinidad_pelicula(Usuario, Genero, Afinidad) :-
  % Obtener los puntos de afinidad del usuario con el género de películas
  findall(Puntos, (pelicula(Titulo, _, Genero, _, _), reproduccion_usuario(Usuario, Titulo, Puntos)), PuntosAfinidad),
  sum_list(PuntosAfinidad, Afinidad).

% Predicado para calcular la afinidad por género para las series
afinidad_serie(Usuario, Genero, Afinidad) :-
  % Obtener los puntos de afinidad del usuario con el género de series
  findall(Puntos, (serie(Titulo, _, Genero, _, _), reproduccion_usuario(Usuario, Titulo, Puntos)), PuntosAfinidad),
  sum_list(PuntosAfinidad, Afinidad).

% Predicado para calcular la afinidad por género para las canciones
afinidad_cancion(Usuario, Genero, Afinidad) :-
  % Obtener los puntos de afinidad del usuario con el género de canciones
  findall(Puntos, (cancion(Titulo, _, Genero, _), reproduccion_usuario(Usuario, Titulo, Puntos)), PuntosAfinidad),
  sum_list(PuntosAfinidad, Afinidad).

% Predicado para obtener los puntos de reproducción de un título por parte de un usuario
reproduccion_usuario(Usuario, Titulo, Puntos) :-
  (reproduccion(Usuario, Titulo), Puntos = 1;
   reproduccion_mas_de_una_vez(Usuario, Titulo), Puntos = 2;
   Puntos = 3).

% Predicado para obtener la calificación en estrellas de la última reproducción de un título
estrellas_ultima_reproduccion(Titulo, Estrellas) :-
  findall(EstrellasReproduccion, reproduccion(Titulo, _, EstrellasReproduccion), EstrellasReproducciones),
  max_list(EstrellasReproducciones, Estrellas).

% Predicado para recomendar títulos al usuario
recomendar_titulos(Usuario) :-
  write('Nombre de usuario: '),
  read(Usuario),
  nl,
  findall(Puntuacion-Titulo-Tipo-Genero, (
    (pelicula(Titulo, _, Genero, _, _), afinidad_pelicula(Usuario, Genero, Afinidad), estrellas_ultima_reproduccion(Titulo, Estrellas), Puntuacion is Afinidad + Estrellas),
    Tipo = 'Película'
  ; (serie(Titulo, _, Genero, _, _), afinidad_serie(Usuario, Genero, Afinidad), estrellas_ultima_reproduccion(Titulo, Estrellas), Puntuacion is Afinidad + Estrellas),
    Tipo = 'Serie'
  ; (cancion(Titulo, _, Genero, _), afinidad_cancion(Usuario, Genero, Afinidad), estrellas_ultima_reproduccion(Titulo, Estrellas), Puntuacion is Afinidad + Estrellas),
    Tipo = 'Canción'
  ), Recomendaciones),
  sort(Recomendaciones, RecomendacionesOrdenadas),
  reverse(RecomendacionesOrdenadas, RecomendacionesOrdenadasReversas),
  mostrar_recomendaciones(RecomendacionesOrdenadasReversas).

% Predicado para mostrar las recomendaciones al usuario
mostrar_recomendaciones([]) :-
  write('No hay recomendaciones disponibles para este usuario.'), nl.
mostrar_recomendaciones([Puntuacion-Titulo-Tipo-Genero|Recomendaciones]) :-
  write('Título: '), write(Titulo), nl,
  write('Tipo: '), write(Tipo), nl,
  write('Género: '), write(Genero), nl,
  write('Puntuación: '), write(Puntuacion), nl,
  nl,
  mostrar_recomendaciones(Recomendaciones).


% Predicado para registrar una reproducción de un título
registrar_reproduccion :-
  write('Nombre de usuario: '),
  read(Usuario),
  write('Tipo de producción (película, serie o canción): '),
  read(Tipo),
  write('Nombre del título: '),
  read(Titulo),
  write('Calificación asignada (de 1 a 5): '),
  read(Calificacion),
  assert(reproduccion(Usuario, Titulo, Calificacion)),
  write('Reproducción registrada con éxito.'), nl.


reproduccion_mas_de_una_vez(Usuario, Titulo) :-
  findall(Titulo, reproduccion(Usuario, Titulo), Reproducciones),
  length(Reproducciones, Cantidad),
  Cantidad > 1.


% Resto del código...si hay que modificar
