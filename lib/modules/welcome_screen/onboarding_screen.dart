import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mao_app/layout/home_screen.dart';
import 'package:mao_app/main.dart';
import 'package:mao_app/models/onboarding_model/onboarding_model.dart';
import 'package:mao_app/shared/constant.dart';

class OnBoardingScreen extends StatefulWidget
{
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
{
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: onBoardingList.length,
        scrollDirection: Axis.horizontal,
        onPageChanged: (value){
          setState(() {
            currentIndex = value ;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(onBoardingList[currentIndex].photo),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              Container(
                decoration:  BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        onBoardingList[currentIndex].shadeColor,
                      ],
                    )),
              ),
              Positioned(
                bottom: 150.0,
                left: 30.0,
                child: Column(
                  children: [
                     Text(
                      onBoardingList[currentIndex].firstText,
                      style: const TextStyle(
                        fontFamily: fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                     Text(
                       onBoardingList[currentIndex].secondText,
                      style: const TextStyle(
                        fontFamily: fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 60.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: MaterialButton(
                        elevation: 0.0,
                        child:  Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            onBoardingList[currentIndex].buttonText,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontFamily: fontFamily,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onPressed: (){
                         setState(() {
                           if(currentIndex == 2 ){
                             Navigator.pushReplacement(context, MaterialPageRoute(
                                 builder: (context) =>  HomeLayout(),
                           )
                             );
                           } else {
                             currentIndex = currentIndex+1 ;
                           }
                         });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
