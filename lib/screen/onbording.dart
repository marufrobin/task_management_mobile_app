import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_management_mobile_app/models/textModel.dart';
import 'package:task_management_mobile_app/widgets/custom_button.dart';

class OnBordingPage extends StatelessWidget {
  OnBordingPage({Key? key}) : super(key: key);
  final topPageScript = TextModel.scriptData();

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
        CustomButton(buttonText: "Sign Up", isBlue: true),
        CustomButton(buttonText: "Login", isBlue: false)
      ],
    );
  }

  Expanded slidingTextView() {
    return Expanded(
      child: Container(
        height: double.infinity,
        // color: Colors.red,
        margin: EdgeInsets.only(top: 36, bottom: 36),
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topPageScript.length,
            itemBuilder: (context, index) {
              var topPage = topPageScript;

              return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
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
      ),
    );
  }
}
