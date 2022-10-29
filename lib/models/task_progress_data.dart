import 'dart:ui';

import 'package:flutter/material.dart';

class TaskProgressData {
  String status;
  int progressNumber;
  Color bgclr;
  Color clr;

  TaskProgressData(this.progressNumber, this.status, this.bgclr, this.clr);
  static List<TaskProgressData> taskDataList() {
    return [
      TaskProgressData(7, "Urgent", Color(0xffFEEBF5), Color(0xffF79293)),
      TaskProgressData(5, "In Review", Color(0xffFFF6E4), Color(0xffFFBE3C)),
      TaskProgressData(8, "In Progress", Color(0xffE6EBF8), Color(0xff246BFD)),
      TaskProgressData(6, "Approval", Color(0xffDDEEEA), Color(0xff76BBAA)),
      TaskProgressData(7, "Urgent", Color(0xffFEEBF5), Color(0xffF79293)),
      TaskProgressData(5, "In Review", Color(0xffFFF6E4), Color(0xffFFBE3C)),
      TaskProgressData(8, "In Progress", Color(0xffE6EBF8), Color(0xff246BFD)),
      TaskProgressData(6, "Approval", Color(0xffDDEEEA), Color(0xff76BBAA)),
    ];
  }
}
