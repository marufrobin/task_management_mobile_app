import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_mobile_app/models/listModel.dart';
import 'package:task_management_mobile_app/models/task_progress_data.dart';

import '../widgets/custom_button.dart';

class DashBordPage extends StatelessWidget {
  DashBordPage({Key? key}) : super(key: key);
  // var _listModel = ListModel.listOfProjectTask;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var listTask = ListModel.listOfProjectTask();
  var taskDataList = TaskProgressData.taskDataList();
  var prgesBar = 300 / 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff191A22),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCustomAppBar(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Project Task",
                  style: buildTextStyle(fntSize: 18, fntWit: FontWeight.bold)),
            ),
            buildProjectTaskList(),
            Stack(
              children: [
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
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.60,
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
                                      Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(16),
                                                child: Icon(
                                                  Icons.check_box_outlined,
                                                  size: 24,
                                                  color: Color(0xffE9E9EB),
                                                ),
                                              ),
                                            ],
                                          )),
                                      Expanded(
                                          flex: 6,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Research Analysis",
                                                    style: buildTextStyle(
                                                        fntSize: 18,
                                                        fntWit: FontWeight.w400,
                                                        clr: Color(0xffF8F8F8)),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 16),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        color:
                                                            taskDataList[index]
                                                                .bgclr),
                                                    child: Text(
                                                        "${taskDataList[index].status}",
                                                        style: buildTextStyle(
                                                          clr: taskDataList[
                                                                  index]
                                                              .clr,
                                                        )),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 8),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Stack(children: [
                                                    Container(
                                                      height: 8,
                                                      width: 238,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff363748),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16)),
                                                    ),
                                                    Container(
                                                      height: 8,
                                                      width: taskDataList[index]
                                                              .progressNumber *
                                                          prgesBar,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff9C67F9),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16)),
                                                    ),
                                                  ]),
                                                  Text(
                                                    "${taskDataList[index].progressNumber}/20",
                                                    style: buildTextStyle(
                                                        fntSize: 14,
                                                        fntWit:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        Colors.teal,
                                                    radius: 6,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "2 Days Left",
                                                    style: buildTextStyle(
                                                        fntSize: 14,
                                                        fntWit:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                );
                              }),
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 8);
                              },
                              itemCount: taskDataList.length),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  child: Container(
                    height: 100,
                    color: Color(0xff292B3E),
                    child: Stack(children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          buildBottomNavIcon(
                              iconName: "myTaskIcon.svg",
                              pageName: "My Task",
                              isSlected: true),
                          SizedBox(
                            width: 34,
                          ),
                          buildBottomNavIcon(
                              iconName: "calenderIcon.svg",
                              pageName: "Calender",
                              isSlected: false),
                          SizedBox(
                            width: 90,
                          ),
                          buildBottomNavIcon(
                              iconName: "projectIcon.svg",
                              pageName: "Project",
                              isSlected: false),
                          SizedBox(
                            width: 34,
                          ),
                          buildBottomNavIcon(
                              iconName: "userProfile.svg",
                              pageName: "Profile",
                              isSlected: false),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 170,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                      radius: 32,
                    )),
              ],
            )
          ],
        ),
        bottomSheet: Container(
          height: 620,
          color: Color(0xff292B3E),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add New Project",
                      style: buildTextStyle(
                          clr: Colors.white,
                          fntSize: 20,
                          fntWit: FontWeight.bold),
                    ),
                    buildTextBeforeTF(script: "Project Name"),
                    TextFormField(
                      // controller: _emailController,
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8A8A8E)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 16),
                        prefixIcon: Container(
                          padding: EdgeInsets.only(
                              left: 16, right: 16, top: 16, bottom: 16),
                          child: SvgPicture.asset(
                            "assets/project.svg",
                            fit: BoxFit.cover,
                            height: 24,
                            width: 24,
                          ),
                        ),
                        // labelText: "Email",
                        hintText: "Enter project name ",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8A8A8E)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff8E8E93), width: 2),
                            borderRadius: BorderRadius.circular(28)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28)),
                      ),
                    ),
                    SizedBox(height: 16),
                    buildTextBeforeTF(script: "Assigned to"),
                    TextFormField(
                      // controller: _passwordController,
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8A8A8E)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16, bottom: 16),
                        prefixIcon: Container(
                            padding: EdgeInsets.only(
                                left: 16, right: 16, top: 16, bottom: 16),
                            child: Icon(
                              Icons.person_add_alt,
                              color: Color(0xff8A8A8E),
                            )),
                        // labelText: "Email",
                        hintText: "Select Your Team",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8A8A8E)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff8E8E93), width: 2),
                            borderRadius: BorderRadius.circular(28)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28)),
                      ),
                    ),
                    SizedBox(height: 16),
                    buildTextBeforeTF(script: "Progress"),
                    TextFormField(
                      // controller: _passwordController,
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8A8A8E)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16, bottom: 16),
                        prefixIcon: Container(
                            padding: EdgeInsets.only(
                                left: 16, right: 16, top: 16, bottom: 16),
                            child: Icon(
                              Icons.fact_check_outlined,
                              color: Color(0xff8A8A8E),
                            )),
                        // labelText: "Email",
                        hintText: "Ongoing",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8A8A8E)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff8E8E93), width: 2),
                            borderRadius: BorderRadius.circular(28)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28)),
                      ),
                    ),
                    SizedBox(height: 16),
                    buildTextBeforeTF(script: "TimeLine"),
                    TextFormField(
                      // controller: _passwordController,
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8A8A8E)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16, bottom: 16),
                        prefixIcon: Container(
                            padding: EdgeInsets.only(
                                left: 16, right: 16, top: 16, bottom: 16),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xff8A8A8E),
                            )),
                        // labelText: "Email",
                        hintText: "2 March 2021",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8A8A8E)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff8E8E93), width: 2),
                            borderRadius: BorderRadius.circular(28)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28)),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/Link.svg",
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        buildTextBeforeTF(
                            script: "Attach File", clr: Colors.white),
                      ],
                    )
                  ],
                ),
              ),
              CustomButton(buttonText: "Login", isBlue: true),
            ],
          ),
        ),
      ),
    );
  }

  Container buildTextBeforeTF({required String script, Color? clr = null}) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      child: Text(
        script,
        style: TextStyle(
            fontFamily: "Nunito",
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: clr != null ? clr : Color(0xff8A8A8E)),
      ),
    );
  }

  Container buildBottomNavIcon(
      {String? iconName, String? pageName, bool? isSlected}) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          SvgPicture.asset(
            height: 24,
            width: 24,
            "assets/$iconName",
            color: isSlected == true ? Color(0xffF8F8F8) : Color(0xff8A8A8E),
          ),
          Text(
            "$pageName",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Nunito",
              fontWeight: FontWeight.w700,
              color: isSlected == true ? Color(0xffF8F8F8) : Color(0xff8A8A8E),
            ),
          )
        ],
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
