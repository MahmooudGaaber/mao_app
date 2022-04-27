import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/shared/constant.dart';

List settingOptions =
[
  'Share the app',
  'Question',
  'About',
] ;

Widget settingScreenOption (index) =>Container(
  height: 60.0,
  width: double.infinity,
  color: Colors.white,
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(
          settingOptions[index],
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    ),
  ),
);

