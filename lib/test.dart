import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/shared/network/remote/dio_helper.dart';
import 'models/movies_model/items.dart';

class TestScreen extends StatefulWidget
{
  const TestScreen({Key? key}) : super(key: key);
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Material(
                elevation: 5.0,
                shadowColor: Colors.black,
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      width: 120.0,
                      height: 150.0,
                      decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://wallpaperaccess.com/full/5191804.jpg'),
                          // image: NetworkImage(moviesModel.results![0].posterPath),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Text(
                        "Exists",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: Container(
                        height: 25.0,
                        width: 25.0,
                        child: const Center(
                          child: Text(
                            "9.5",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.orangeAccent,
                              Colors.deepOrangeAccent,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],),
    );
  }
}
