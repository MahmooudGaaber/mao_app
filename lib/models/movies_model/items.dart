import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/shared/constant.dart';
import 'package:mao_app/models/movies_model/jason_model.dart';

late MoviesModel moviesModel ;
Widget nowMoviesBuildItem() => Padding(
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
              decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://wallpaperaccess.com/full/5191804.jpg'),
                  // image: NetworkImage(moviesModel.results[0].posterPath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Exists",
            style: TextStyle(
              color: Colors.black,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

Widget popularMoviesBuildItem()=> Padding(
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
              decoration:  BoxDecoration(
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
);

Widget moreBuildItem() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Material(
            elevation: 5.0,
            shadowColor: Colors.black,
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              width: 120.0,
              height: 150.0,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: const Center(
                child: Text(
                  "MORE",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "\n\n",
            style: TextStyle(
              color: Colors.black,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );


Widget popularMoviesList()=>SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height:180,
        width: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>popularMoviesBuildItem(),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
        ),
      ),
      popularMoviesListView(),
    ],
  ),
);

Widget nowMoviesListView()=>SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  physics: const BouncingScrollPhysics(),
  child: Row(
    children: [
      SizedBox(
        height:200,
        width: 260,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context,index)=>nowMoviesBuildItem(),
          scrollDirection: Axis.horizontal,
          itemCount: 2,
        ),
      ),
      moreBuildItem(),
    ],
  ),
);

Widget popularMoviesListView()=>SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  physics: const BouncingScrollPhysics(),
  child: Row(
    children: [
      SizedBox(
        height:200,
        width: 260,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context,index)=>popularMoviesBuildItem(),
          scrollDirection: Axis.horizontal,
          itemCount: 2,
        ),
      ),
      moreBuildItem(),
    ],
  ),
);

