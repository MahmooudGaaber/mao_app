import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/models/profle_model/items.dart';
import 'package:mao_app/models/profle_model/profle_model.dart';
import 'package:mao_app/modules/setting_screen/setting_screen.dart';
import 'package:mao_app/shared/constant.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontFamily: fontFamily ,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context)=>const SettingScreen(),
              )
              );
            },
            icon: const Icon(
                Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                          "https://cdn.dribbble.com/users/2364329/screenshots/4759681/dribbble-11.jpg",),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        "Allen lee",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: fontFamily ,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25.0,),
              SizedBox(
                height: 100.0,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context , index)=>profileLikesBar(index),
                  itemCount: profileLikeList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(height: 30.0,),
              SizedBox(
                width: double.infinity,
                height: 400.0,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: profileMoviesList.length,
                  gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 2.5,
                    mainAxisSpacing: 10.0,
                  ),
                    itemBuilder: (context,index)=>profileMoviesGridView(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
