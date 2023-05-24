% Esta funcionalidad no se logro implementar
% No sirve
% Test
:- dynamic reproduccion/4.

% Registra una reproducción en el historial
registrar_reproduccion(Usuario, TipoProduccion, Titulo, Calificacion) :-
    assertz(reproduccion(Usuario, TipoProduccion, Titulo, Calificacion)).

% Obtiene todas las reproducciones almacenadas en el historial
obtener_reproducciones(Historial) :-
    findall(reproduccion(Usuario, TipoProduccion, Titulo, Calificacion), reproduccion(Usuario, TipoProduccion, Titulo, Calificacion), Historial).

% Limpia el historial, eliminando todas las reproducciones almacenadas
limpiar_historial :-
    retractall(reproduccion(_, _, _, _)).

% Retorna true si la información recibida es una repuracción válida.