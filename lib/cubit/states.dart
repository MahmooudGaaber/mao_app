abstract class MoviesScreenStates {}

class MoviesScreenInitialState extends MoviesScreenStates {}

class LoadingGetMoviesState extends MoviesScreenStates {}

class SuccessGetMoviesState extends MoviesScreenStates {}

class ErrorGetMoviesState extends MoviesScreenStates {
  String error;
  ErrorGetMoviesState({required this.error});
}