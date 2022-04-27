import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/models/profle_model/profle_model.dart';
import 'package:mao_app/shared/constant.dart';

Widget profileLikesBar (index) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 5.0,),
  child: Material(
    elevation: 5.0,
    shadowColor: Colors.black,
    clipBehavior: Clip.hardEdge,
    borderRadius: BorderRadius.circular(10.0),
    color: Colors. white,
    child: SizedBox(
      width: 110.0,
      height: 100.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(
            profileLikeList[index].itemNumber,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.deepOrange,
              fontFamily: fontFamily ,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0,),
          Text(
            profileLikeList[index].itemName,
            style: const TextStyle(
              fontFamily: fontFamily ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  ),
) ;

Widget profileMoviesGridView(index) =>Padding(
  padding: const EdgeInsets.symmetric(horizontal: 5.0),
  child: Container(
    width: 80.0,
    height: 130.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      image: DecorationImage(
        image: NetworkImage(profileMoviesList[index]),
        fit: BoxFit.cover,
      ),
    ),
  ),
);