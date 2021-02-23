import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisterhood_v2/app/modules/home/home_controller.dart';
import 'package:sisterhood_v2/app/routes/app_pages.dart';
import 'package:supercharged/supercharged.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#6A71ED".toColor(),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 32.0,
          ),
          Center(
            child: Text(
              "Sisterhood",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 28.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: "#F8F8FC".toColor(),
                borderRadius: BorderRadius.circular(30.0)),
            margin: EdgeInsets.symmetric(horizontal: 54.0),
            height: 250.0,
          ),
          SizedBox(
            height: 28.0,
          ),
          Text(
            "Hello human!",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(
            height: 14.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "It invites for further exploration introducing the user to the women behind scientific breakthroughs and inventions and confrontations with traditional morals and values within society. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          FlatButton(onPressed: () => Get.toNamed(Routes.NOTIFICATIONS), child: Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(child: Text("I'm ready!", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: "#8E8E9C".toColor()),)),
          ))
        ],
      )),
    );
  }
}
