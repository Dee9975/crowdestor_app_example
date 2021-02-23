import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sisterhood_v2/app/models/date.dart';
import 'package:get/get.dart';
import 'dart:async';

class CalendarService {
  CollectionReference calendarRef = FirebaseFirestore.instance.collection("dates");
  Rx<List<Date>> dateList = Rx<List<Date>>();

  Stream<List<Date>> dateStream() {
    return calendarRef.snapshots().map((QuerySnapshot query) {
      List<Date> retVal = [];
      query.docs.forEach((element) {
          retVal.add(Date.fromSnapshot(element));
        });
      return retVal;
    });
  }
}