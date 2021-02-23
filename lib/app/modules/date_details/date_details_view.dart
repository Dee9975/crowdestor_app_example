import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisterhood_v2/app/models/date.dart';
import 'package:sisterhood_v2/app/modules/date_details/date_details_controller.dart';
import 'package:supercharged/supercharged.dart';

class DateDetailsView extends GetView<DateDetailsController> {
  @override
  Widget build(BuildContext context) {
    Date data = Get.arguments;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: [
          SliverPersistentHeader(
            delegate: Header(data: data),
            pinned: true,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 24.0, left: 32.0, right: 32.0, bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 8.0),
                        child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "NATIONALITY\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.0,
                                        fontSize: 12.0)),
                                TextSpan(text: data.nationality),
                              ],
                              style: TextStyle(
                                  color: Colors.black,
                                  height: 1.5,
                                  fontSize: 16.0)),
                        )),
                    data.achievements != ""
                        ? Container(
                            padding: EdgeInsets.only(top: 26.0),
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "ACHIEVEMENTS\n",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            letterSpacing: 2.0)),
                                    TextSpan(text: data.achievements),
                                  ],
                                  style: TextStyle(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontSize: 16.0)),
                            ))
                        : Offstage(),
                    Container(
                        padding: EdgeInsets.only(top: 24.0),
                        child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(text: data.description),
                              ],
                              style: TextStyle(
                                  color: Colors.black,
                                  height: 1.5,
                                  fontSize: 16.0)),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}

class Header extends SliverPersistentHeaderDelegate {
  final Date data;
  Header({@required this.data});

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;
  @override
  double get maxExtent => 360.0;
  @override
  double get minExtent => 150.0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final Color color = data.color.toColor();
        final double percentage =
            (constraints.maxHeight - minExtent) / (maxExtent - minExtent);
        return Container(
          decoration: BoxDecoration(
              color: color,
              image: DecorationImage(
                  image: AssetImage("assets/images/josephine.png"),
                  fit: BoxFit.cover)),
          height: constraints.maxHeight,
          child: SafeArea(
            child: Stack(children: [
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  left: 32,
                  right: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Container(
                          height: 30.0, child: Icon(Icons.arrow_back)),
                      onTap: () => Get.back(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 11.0, top: 110.0),
                      child: Opacity(
                        opacity: percentage,
                        child: Text(
                          data.category.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 2.0,
                              fontSize: 12.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Opacity(
                        opacity: percentage,
                        child: Text(
                          data.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: percentage,
                      child: Text(
                        data.role,
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
