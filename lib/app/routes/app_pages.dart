import 'package:sisterhood_v2/app/modules/about/about_view.dart';
import 'package:sisterhood_v2/app/modules/about/about_binding.dart';
import 'package:sisterhood_v2/app/modules/feedback/feedback_view.dart';
import 'package:sisterhood_v2/app/modules/feedback/feedback_binding.dart';
import 'package:sisterhood_v2/app/modules/settings/settings_view.dart';
import 'package:sisterhood_v2/app/modules/settings/settings_binding.dart';
import 'package:sisterhood_v2/app/modules/date_details/date_details_view.dart';
import 'package:sisterhood_v2/app/modules/date_details/date_details_binding.dart';
import 'package:sisterhood_v2/app/modules/calendar/calendar_view.dart';
import 'package:sisterhood_v2/app/modules/calendar/calendar_binding.dart';
import 'package:sisterhood_v2/app/modules/notifications/notifications_view.dart';
import 'package:sisterhood_v2/app/modules/notifications/notifications_binding.dart';
import 'package:sisterhood_v2/app/modules/home/home_view.dart';
import 'package:sisterhood_v2/app/modules/home/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATIONS, 
      page:()=> NotificationsView(), 
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: Routes.CALENDAR, 
      page:()=> CalendarView(), 
      binding: CalendarBinding(),
    ),
    GetPage(
      name: Routes.DATE_DETAILS, 
      page:()=> DateDetailsView(), 
      binding: DateDetailsBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS, 
      page:()=> SettingsView(), 
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.FEEDBACK, 
      page:()=> FeedbackView(), 
      binding: FeedbackBinding(),
    ),
    GetPage(
      name: Routes.ABOUT, 
      page:()=> AboutView(), 
      binding: AboutBinding(),
    ),
  ];
}