import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/models/movies_model/items.dart';
import 'package:mao_app/shared/constant.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          "Movies",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Material(
                  elevation: 5.0,
                  shadowColor: Colors.black,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  child: Container(
                    width: 360.0,
                    height: 140.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.orangeAccent,
                          Colors.deepOrangeAccent,
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100.0,
                          width: 280,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Now",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              nowMoviesListView(),
              const Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              popularMoviesList(),

            ],
          ),
        ),
      ),
    );
  }
}
