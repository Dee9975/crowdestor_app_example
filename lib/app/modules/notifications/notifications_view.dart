import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:sisterhood_v2/app/modules/notifications/notifications_controller.dart';
import 'package:sisterhood_v2/app/routes/app_pages.dart';
import 'package:supercharged/supercharged.dart';

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#6A71ED".toColor(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: "#F8F8FC".toColor(),
                  borderRadius: BorderRadius.circular(30.0)),
              margin: EdgeInsets.symmetric(horizontal: 54.0),
              height: 250.0,
            ),
            SizedBox(height: 19.0,),
            Text(
              "Allow \nnotifications",
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Once a while we will add new inspiring people that you will be able to learn more about. Allow notifications on the next screen so you won’t miss it",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            SizedBox(height: 27.0,),
            FlatButton(onPressed: () => Get.toNamed(Routes.CALENDAR), child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Center(child: Text("Let's do it", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: "#8E8E9C".toColor()),)),
            )),
            SizedBox(height: 36.0,),
            Center(child: Text("Skip", style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, fontSize: 16.0),)),
            SizedBox(height: 50.0,)
          ],
        ),
      )
    );
  }
}
  