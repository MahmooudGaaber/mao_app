import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/shared/constant.dart';

Widget nowTvBuildItem() => Padding(
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
            child: Container(
              width: 120.0,
              height: 150.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://wallpaperaccess.com/full/5191804.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Tv Name",
            style: TextStyle(
              color: Colors.black,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

Widget popularTvBuildItem() => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Material(
              elevation: 5.0,
              shadowColor: Colors.black,
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                children: [
                  Container(
                    width: 360.0,
                    height: 140.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://wallpaperaccess.com/full/5191804.jpg'),
                        fit: BoxFit.fill,
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
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Tv Name",
            style: TextStyle(
              color: Colors.black,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

Widget nowTvListView() => SizedBox(
      height: 200.0,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => nowTvBuildItem(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
      ),
    );

Widget popularTvListView() => Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => popularTvBuildItem(),
        itemCount: 5,
      ),
    );
