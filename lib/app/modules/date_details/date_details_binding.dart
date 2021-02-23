import 'package:get/get.dart';

import 'package:sisterhood_v2/app/modules/date_details/date_details_controller.dart';

class DateDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DateDetailsController>(
      () => DateDetailsController(),
    );
  }
}
