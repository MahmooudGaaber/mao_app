import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mao_app/cubit/states.dart';
import 'package:mao_app/models/movies_model/jason_model.dart';
import 'package:mao_app/shared/network/remote/dio_helper.dart';
import 'package:mao_app/shared/network/repo.dart';

class MoviesScreenCubit extends Cubit<MoviesScreenStates> {
  MoviesScreenCubit() : super(MoviesScreenInitialState());
  static MoviesScreenCubit get(context) => BlocProvider.of(context);
   MoviesModel? moviesModel;
   List<Results> popularMovies = [] ;
}