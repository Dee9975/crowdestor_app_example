import 'package:get/get.dart';

class NotificationsController extends GetxController {
  //TODO: Implement NotificationsController
  
  final count = 0.obs;

  @override
  void onInit() {
    print("Hello");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  increment() => count.value++;
}
