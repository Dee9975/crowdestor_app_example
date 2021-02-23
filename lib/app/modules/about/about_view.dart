import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:sisterhood_v2/app/modules/about/about_controller.dart';
import 'package:supercharged/supercharged.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('About us', style: TextStyle(color: Colors.black),),
        backgroundColor: "F2F2F2".toColor(),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:24.0),
                child: Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet vehicula lorem. Nullam ac arcu vel erat efficitur blandit. Aliquam nec dui eget felis accumsan finibus. Vestibulum fermentum quam id bibendum tincidunt. In condimentum ut dui et sodales. Cras sed nibh eu ligula imperdiet congue. Suspendisse potenti.\n\nProin ullamcorper sapien elementum diam commodo, a consectetur est cursus. In elementum arcu at hendrerit sagittis. In cursus consequat tellus, at consectetur dolor feugiat ac. Ut laoreet turpis in ullamcorper feugiat. Praesent semper placerat turpis sit amet varius.\n\nQuisque libero urna, interdum ac elit a, consequat vestibulum mi. Donec at magna pellentesque, mollis felis eu, tempor odio.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet vehicula lorem. Nullam ac arcu vel erat efficitur blandit. Aliquam nec dui eget felis accumsan finibus. Vestibulum fermentum quam id bibendum tincidunt. In condimentum ut dui et sodales. Cras sed nibh eu ligula imperdiet congue. Suspendisse potenti.\n\nProin ullamcorper sapien elementum diam commodo, a consectetur est cursus. In elementum arcu at hendrerit sagittis. In cursus consequat tellus, at consectetur dolor feugiat ac. Ut laoreet turpis in ullamcorper feugiat. Praesent semper placerat turpis sit amet varius.\n\nQuisque libero urna, interdum ac elit a, consequat vestibulum mi. Donec at magna pellentesque, mollis felis eu, tempor odio.''', textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0, height: 1.3),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
  