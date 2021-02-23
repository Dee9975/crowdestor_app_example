import 'package:get/get.dart';

import 'package:sisterhood_v2/app/modules/about/about_controller.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );
  }
}
