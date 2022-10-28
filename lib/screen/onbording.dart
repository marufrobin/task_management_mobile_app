import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_management_mobile_app/models/textModel.dart';
import 'package:task_management_mobile_app/widgets/custom_button.dart';

class OnBordingPage extends StatefulWidget {
  OnBordingPage({Key? key}) : super(key: key);

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  final topPageScript = TextModel.scriptData();
  var _isSlected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(children: [
            Positioned(
              top: -184,
              child: Transform.rotate(
                angle: pi / 4,
                child: Container(
                  // transform: Matrix4.,
                  height: 400,
                  width: 480,
                  decoration: BoxDecoration(
                    color: Color(0xff8E8E93),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ]),
        ),
        slidingTextView(),
        SizedBox(
          height: 10,
          // width: 116,
          child: Row(
            children: [
              ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: topPageScript.length,
                  itemBuilder: ((context, index) => indicatorOfPageChange(
                      isActive: _isSlected == index ? true : false)))
            ],
          ),
        ),
        CustomButton(buttonText: "Sign Up", isBlue: true),
        CustomButton(buttonText: "Login", isBlue: false)
      ],
    );
  }

  slidingTextView() {
    return Container(
      height: 200,
      // color: Colors.red,
      margin: EdgeInsets.only(top: 36, bottom: 36),
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topPageScript.length,
          onPageChanged: ((value) {
            setState(() {
              _isSlected = value;
            });
          }),
          itemBuilder: (context, index) {
            var topPage = topPageScript;

            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    // margin: EdgeInsets.all(20),
                    child: Text(
                      topPage[index].script,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito"),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  Container indicatorOfPageChange({required bool isActive}) {
    return Container(
      width: isActive ? 48 : 24,
      height: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: isActive ? Color(0xff246BFD) : Color(0xff292B3E)),
    );
  }
}
