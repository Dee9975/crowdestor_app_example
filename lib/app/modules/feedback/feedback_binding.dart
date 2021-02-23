import 'package:get/get.dart';

import 'package:sisterhood_v2/app/modules/feedback/feedback_controller.dart';

class FeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeedbackController>(
      () => FeedbackController(),
    );
  }
}
