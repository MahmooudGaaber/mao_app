import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../errors.dart';



class  DioHelper
{


  static late Dio dio ;

  static init(){
   dio = Dio(
    BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/movie/',
    receiveDataWhenStatusError: true,
    ),
    );
  }

  static Future<dynamic> getData({
  required String url ,
}) async {
    dio.options.headers = {
      'lang': 'en',
      'Content-Type': 'application/json',
    };
    return await dio.get(url);

  }
}

// extension on DioHelper {
//   Future _request(Future<Response> Function() request) async {
//     try {
//       final r = await request.call();
//       print("Response => ${r?.data}");
//       return r.data;
//     } on DioError catch (e) {
//       // if (e.response.statusCode == 500 &&
//       //     e.response.data['error_msg'].toString().contains('Unauthenticated')) {
//       //   showToast(msg: 'قد تم تسجيل خروجك تلقائيًا من فضلك قم بتسجبل دخولك.');
//       //   // di<SharedCubit>().logout();
//       //   // navigateAndFinish(LoginScreen(), navigatorKey.currentState.context);
//       // } else {
//       //   // toastConnectionError();
//       // }
//       throw ServerException(e);
//     } catch (e) {
//       // toastConnectionError();
//       throw Exception();
//     }
//   }
// }