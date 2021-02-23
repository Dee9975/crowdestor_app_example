import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisterhood_v2/app/routes/app_pages.dart';
import 'package:supercharged/supercharged.dart';

class FeedbackController extends GetxController {
  TextEditingController feedbackController;

  @override
  void onInit() {
    feedbackController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    feedbackController?.dispose();
    super.onClose();
  }

  void sendFeedback() {
    if (feedbackController.text.length > 10) {
      Get.dialog(AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        title: Center(child: Text("Thanks!")),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Your opinion is very important to us, our team is working hard to make the best use of this app"),
            SizedBox(height: 36.0,),
            GestureDetector(
              onTap: () => Get.offAllNamed(Routes.CALENDAR),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: "#6A71ED".toColor(),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text("OK", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                ),
              ),
            )
          ],
        ),
      ));
    } else {
      Get.snackbar("An error occurred", "The message was too short!",
          backgroundColor: Colors.red, colorText: Colors.white, margin: EdgeInsets.zero, snackPosition: SnackPosition.BOTTOM);
    }
  }
}
