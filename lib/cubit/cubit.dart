import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mao_app/cubit/states.dart';
import 'package:mao_app/models/movies_model/jason_model.dart';
import 'package:mao_app/shared/network/repo.dart';

class MoviesScreenCubit extends Cubit<MoviesScreenStates> {
  final Repository repository;
  MoviesScreenCubit(this.repository) : super(MoviesScreenInitialState());
  static MoviesScreenCubit get(context) => BlocProvider.of(context);
   MoviesModel? moviesModel;
   List<Results> popularMovies = [] ;
  Future getMovies() async {
    emit(LoadingGetMoviesState());
    final f =
    await repository.getHomeData();
    f.fold((l) async {
      emit(ErrorGetMoviesState(error: l));
    }, (r) {
      moviesModel = r;
      popularMovies = moviesModel!.results ;
      emit(SuccessGetMoviesState());
    });
  }
}