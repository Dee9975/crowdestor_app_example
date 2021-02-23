import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisterhood_v2/app/modules/calendar/calendar_controller.dart';
import 'package:sisterhood_v2/app/modules/calendar/topbarcontroller_controller.dart';
import 'package:sisterhood_v2/app/routes/app_pages.dart';
import 'package:supercharged/supercharged.dart';

class CalendarView extends GetView<CalendarController> {
  final TopbarcontrollerController filterController = Get.put(TopbarcontrollerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GetX<CalendarController>(
        init: Get.put<CalendarController>(CalendarController()),
        builder: (CalendarController calendarController) {
          if (calendarController != null && calendarController.items != null) {
            List<Widget> firstHalf = [
              SizedBox(
                height: 30.0,
              )
            ];
            List<Widget> secondHalf = [];
            calendarController.items.forEachIndexed((index, element) {
              if ((index + 1).isEven) {
                firstHalf.add(GestureDetector(
                  onTap: () => Get.toNamed(Routes.DATE_DETAILS, arguments: element),
                  child: Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ClipRRect(
                              child: Image.asset(
                                "assets/images/josephine.png",
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                            child: Text(
                              element.category.toUpperCase() ?? "SCIENCE",
                              style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                  color: element.color.toColor()),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(element.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0)),
                          Text(element.role ?? "Inspiration")
                        ],
                      ),
                    ),
                  ),
                ));
              } else {
                secondHalf.add(GestureDetector(
                  onTap: () => Get.toNamed(Routes.DATE_DETAILS, arguments: element),
                  child: Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ClipRRect(
                              child: Image.asset(
                                "assets/images/josephine.png",
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                            child: Text(
                              element.category.toUpperCase() ?? "SCIENCE",
                              style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                  color: element.color.toColor()),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(element.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0)),
                          Text(element.role ?? "Inspiration")
                        ],
                      ),
                    ),
                  ),
                ));
              }
            });
            return CustomScrollView(
              slivers: [
                TopBar(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 42.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 44.0,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 8.0),
                            child: GestureDetector(
                              onTap: () => filterController.updateActive("all"),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: filterController.active.value == "all" ? Colors.black : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0,
                                    vertical: 12.0,
                                  ),
                                  child: Text(
                                    "All",
                                    style: TextStyle(
                                        color: filterController.active.value == "all" ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
                              onTap: () => filterController.updateActive("science"),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: filterController.active.value == "science" ? Colors.black : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Science",
                                        style: TextStyle(
                                            color: filterController.active.value == "science" ? Colors.white : Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
                              onTap: () => filterController.updateActive("culture"),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: filterController.active.value == "culture" ? Colors.black : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Culture",
                                        style: TextStyle(
                                            color: filterController.active.value == "culture" ? Colors.white : Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24.0),
                            child: GestureDetector(
                              onTap: () => filterController.updateActive("politics"),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: filterController.active.value == "politics" ? Colors.black : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Politics",
                                        style: TextStyle(
                                            color: filterController.active.value == "politics" ? Colors.white : Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Center(
                      child: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Column(
                              children: firstHalf,
                            ),
                          ),
                          Column(
                            children: secondHalf,
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    ));
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 28.0, top: 32.0, right: 28.0, bottom: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sisterhood",
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.SETTINGS),
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      color: "#ededed".toColor()),
                ),
                Icon(
                  Icons.settings,
                  size: 25,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
