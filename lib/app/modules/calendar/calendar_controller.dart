import 'package:get/get.dart';
import 'package:sisterhood_v2/app/models/date.dart';
import 'package:sisterhood_v2/app/modules/calendar/calendar_service.dart';

class CalendarController extends GetxController {
  final Rx<List<Date>> _items = Rx<List<Date>>();
  final loadingItems = false.obs;
  final loadingDetails = false.obs;

  List<Date> get items => _items.value;

  @override
  void onInit() {
    _items.bindStream(CalendarService().dateStream());
    super.onInit();
  }

  @override
  void onClose() {}
}
