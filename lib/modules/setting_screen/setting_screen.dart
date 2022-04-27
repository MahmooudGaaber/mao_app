import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_app/shared/constant.dart';

import 'item.dart';

class SettingScreen extends StatefulWidget
{
  const SettingScreen({Key? key}) : super(key: key);
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Back',
          style: TextStyle(
            color: Colors.black,
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Setting',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => settingScreenOption(index),
                itemCount: settingOptions.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                  );
                },
              ),
            ),
            const Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 50.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.grey[500],
                    child: const Text(
                      'Sign out',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
