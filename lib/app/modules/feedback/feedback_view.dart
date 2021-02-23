import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:sisterhood_v2/app/modules/feedback/feedback_controller.dart';
import 'package:supercharged/supercharged.dart';

class FeedbackView extends GetView<FeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.0,),
              FlatButton(
                child: Icon(Icons.arrow_back_ios),
                onPressed: () => Get.back(),
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text("I've got some\nfeedback!", style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text("We are here to improve and have fun, so if you got any feedback - type it here! ", style: TextStyle(fontSize: 16.0,)),
              ),
              SizedBox(height: 24.0,),
              Container(
                decoration: BoxDecoration(
                    color: "#F2F2F2".toColor(),
                    borderRadius: BorderRadius.circular(10)
                ),
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 21.0, top: 24.0),
                  child: TextField(
                    controller: controller.feedbackController,
                    maxLines: 8,
                    decoration: InputDecoration.collapsed(hintText: "What can we improve?"),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              GestureDetector(
                onTap: () => controller.sendFeedback(),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    color: "#6A71ED".toColor(),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 50.0,
                  child: Center(
                    child: Text("Send feedback", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
  