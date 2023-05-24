% RegistraLaReproduccion.pl

% Predicado para registrar la reproducción de una producción por parte de un usuario
registrar_reproduccion(Usuario, Titulo) :-
  % Verificar si el usuario existe
  usuario(Usuario, _),
  % Verificar si la producción existe
  (pelicula(Titulo, _, _, _, _); serie(Titulo, _, _, _, _); cancion(Titulo, _, _, _)),
  % Registrar la reproducción en el historial
  assertz(reproduccion(Usuario, Titulo)),
  write('Reproducción registrada correctamente.'), nl.

% Predicado para mostrar el historial de reproducciones de un usuario
mostrar_historial_usuario(Usuario) :-
  % Verificar si el usuario existe
  usuario(Usuario, _),
  write('Historial de reproducciones de '), write(Usuario), write(':'), nl,
  reproduccion(Usuario, Titulo),
  format('Título: ~w~n', [Titulo]),
  fail. % falla intencionalmente para detener la búsqueda

mostrar_historial_usuario(Usuario) :-
  % Verificar si el usuario existe
  usuario(Usuario, _),
  write('No hay más reproducciones en el historial.'), nl.

mostrar_historial_usuario(_) :-
  write('El usuario especificado no existe.'), nl.
