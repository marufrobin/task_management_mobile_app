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
  PageController _pageController = PageController();
  // PageController pageController2 = PageController();
  var _isSlected = 0;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _isSlected = _pageController.page!.toInt();
        print("Page Number: ${_isSlected}");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: List.generate(
                  topPageScript.length,
                  (index) => indicatorOfPageChange(
                      isActive: _isSlected == index ? true : false)),
            ),
          ),
          CustomButton(buttonText: "Sign Up", isBlue: true),
          CustomButton(buttonText: "Login", isBlue: false)
        ],
      ),
    );
  }

  slidingTextView() {
    return Container(
      height: 160,
      // color: Colors.red,
      // margin: EdgeInsets.only(
      //   top: 36,
      // ),
      child: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          itemCount: topPageScript.length,
          itemBuilder: (context, index) {
            var topPage = topPageScript;
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // padding: EdgeInsets.all(16),
                    padding: EdgeInsets.only(left: 16, bottom: 2),
                    child: Text(
                      topPage[index].script,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito",
                          color: Color(0xffE4E4E6)),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  AnimatedContainer indicatorOfPageChange({required bool isActive}) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 32),
      duration: Duration(milliseconds: 250),
      width: isActive ? 48 : 24,
      height: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: isActive ? Color(0xff246BFD) : Color(0xff292B3E)),
    );
  }
}
//
