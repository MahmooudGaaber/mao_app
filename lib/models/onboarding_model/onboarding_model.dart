import 'dart:ui';
import 'package:flutter/material.dart';

class OnBoardingModel {
  late String photo;

  late String firstText;

  late String secondText;

  late String buttonText;

  late Color shadeColor;

  OnBoardingModel(
      {required this.photo,
      required this.firstText,
      required this.secondText,
      required this.buttonText,
      required this.shadeColor
      });
}

List<OnBoardingModel> onBoardingList =
[
  OnBoardingModel(
    photo: "assets/images/onboarding1.jpg",
    firstText: "Get the first",
    secondText: "Movies & Tv information",
    buttonText: "NEXT",
    shadeColor: Colors.red,
  ),
  OnBoardingModel(
    photo: "assets/images/onboarding2.jpg",
    firstText: "Know the movie",
    secondText: "is not worth Watching",
    buttonText: "NEXt",
    shadeColor: Colors.yellow,
  ),
  OnBoardingModel(
    photo: "assets/images/onboarding3.jpg",
    firstText: "Real-time",
    secondText: "updates movie Trailer",
    buttonText: "Get START",
    shadeColor: Colors.blue,
  ),
];
