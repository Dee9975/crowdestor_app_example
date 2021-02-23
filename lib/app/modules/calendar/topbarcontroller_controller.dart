import 'package:get/get.dart';

class TopbarcontrollerController extends GetxController {
  //TODO: Implement TopbarcontrollerController
  
  final active = "all".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  updateActive(String a) {
    active.value = a;
    print(active.value);
  }
}
