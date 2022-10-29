import 'package:flutter/material.dart';
import 'package:task_management_mobile_app/models/listModel.dart';

class DashBordPage extends StatelessWidget {
  DashBordPage({Key? key}) : super(key: key);
  // var _listModel = ListModel.listOfProjectTask;

  var listTask = ListModel.listOfProjectTask();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff191A22),
        body: Column(
          children: [
            buildCustomAppBar(),
            Text("Project Task",
                style: buildTextStyle(fntSize: 18, fntWit: FontWeight.bold)),
            buildProjectTaskList(),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                // padding: EdgeInsets.only(top: 16),
                // color: Colors.teal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Task",
                          style: buildTextStyle(fntSize: 18),
                        ),
                        Text(
                          "See more",
                          style: buildTextStyle(
                              fntSize: 18,
                              fntWit: FontWeight.w400,
                              clr: Color(0xffE9E9EB)),
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.65,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: ((context, index) {
                            return Container(
                              width: 340,
                              height: 108,
                              color: Color(0xff292B3E),
                              child: Row(
                                children: [
                                  Expanded(flex: 1, child: Placeholder()),
                                  Expanded(flex: 6, child: Placeholder())
                                ],
                              ),
                            );
                          }),
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 8);
                          },
                          itemCount: listTask.length),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildProjectTaskList() {
    return Container(
      height: 90,
      padding: EdgeInsets.only(left: 16),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 8,
        ),
        itemCount: listTask.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => Container(
              height: 58,
              width: 128,
              decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 36,
                    width: 6,
                    decoration: BoxDecoration(
                        color: listTask[index].clr,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "${listTask[index].taskCount}",
                    style: buildTextStyle(fntSize: 22),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${listTask[index].projectTaskName}",
                    style: buildTextStyle(fntSize: 14),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget buildCustomAppBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff8E8E93),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Robin Team",
            style: buildTextStyle(),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.white,
            size: 16,
          ),
          Spacer(),
          Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: 24,
          )
        ],
      ),
    );
  }

  TextStyle buildTextStyle({double? fntSize, FontWeight? fntWit, Color? clr}) {
    return TextStyle(
      fontSize: fntSize == null ? 16 : fntSize,
      fontFamily: "Nunito",
      fontWeight: fntWit == null ? FontWeight.w700 : fntWit,
      color: clr == null ? Color(0xffE4E4E6) : clr,
    );
  }
}
