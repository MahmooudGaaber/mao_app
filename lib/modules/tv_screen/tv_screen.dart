import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/models/tv_model/items.dart';
import 'package:mao_app/shared/constant.dart';

class TvScreen extends StatelessWidget {
  const TvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          "Tv",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nowTvListView(),
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
          popularTvListView(),
        ],
      ),
    );
  }
}
