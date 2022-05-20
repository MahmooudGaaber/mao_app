import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/models/movies_model/jason_model.dart';
import 'package:mao_app/shared/network/remote/dio_helper.dart';
import 'package:mao_app/shared/network/remote/end_points.dart';

import 'errors.dart';


abstract class Repository {

  Future<Either<String,MoviesModel>> getHomeData();

}

class RepoImplementation extends Repository {
  // final DioHelper dioHelper;
  //
  //
  // RepoImplementation({
  //   required this.dioHelper,
  // });



  @override
  Future<Either<String,MoviesModel>> getHomeData() async {
    return _basicErrorHandling<MoviesModel>(
        onSuccess: () async
        {
          final f = await  DioHelper.getData(
            url: getPopularMoviesEndPoint ,
          );
          return MoviesModel.fromJson(f);
        },
        onServerError: (exception) async{
      final f = exception ;
      final msg = _handleErrorMessages("error");
      return msg ;
    }
    );

  }


}

extension on Repository {
  String _handleErrorMessages(final dynamic f) {
    String msg = '';
    if (f is String) {
      msg = f;
    } else if (f is Map) {
      for (dynamic l in f.values) {
        if (l is List) {
          for (final s in l) {
            msg += '$s\n';
          }
        }
      }
      if (msg.contains('\n')) {
        msg = msg.substring(0, msg.lastIndexOf('\n'));
      }
      if (msg.isEmpty) {
        msg = 'Server Error';
      }
    } else {
      msg = 'Server Error';
    }
    return msg;
  }

  Future<Either<String, T>> _basicErrorHandling<T>({
    required Future<T> Function() onSuccess,
    required Future<String> Function(ServerException exception) onServerError,
     Future<String> Function(CacheException exception)? onCacheError,
     Future<String> Function(String exception)? onOtherError,
  }) async {
    try {
      final f = await onSuccess();
      return Right(f);
    } on ServerException catch (e, s) {
      print(s);
      if (onServerError != null) {
        final f = await onServerError(e);
        return Left(f);
      }
      return Left('Server Error');
    } on CacheException catch (e, s) {
//      print(e);
      if (onCacheError != null) {
        final f = await onCacheError(e);
        return Left(f);
      }
      return Left('Cache Error');
    } catch (e, s) {
      print(s);
      if (onOtherError != null) {
        final f = await onOtherError(e.toString());
        return Left(f);
      }
      return Left(e.toString());
    }
  }
}