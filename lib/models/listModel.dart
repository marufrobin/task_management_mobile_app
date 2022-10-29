import 'package:flutter/material.dart';

class ListModel {
  String projectTaskName;
  int taskCount;
  Color clr;
  ListModel(this.projectTaskName, this.taskCount, this.clr);

  static List<ListModel> listOfProjectTask() {
    return [
      ListModel("On going", 5, Colors.blue),
      ListModel("Up Coming", 7, Colors.orange),
      ListModel("Under \nreview", 4, Colors.teal),
      ListModel("In Progress", 2, Colors.deepPurple),
      ListModel("Complete", 11, Colors.green)
    ];
  }
}
