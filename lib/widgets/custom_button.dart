import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  bool isBlue;
  VoidCallback? navigatorPage;
  CustomButton(
      {required this.buttonText, required this.isBlue, this.navigatorPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      // padding: EdgeInsets.symmetric(horizontal: 340, vertical: 56),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: ElevatedButton(
        onPressed: navigatorPage != null ? navigatorPage : (() {}),
        child: Center(
          child: Text(
            "${buttonText}",
            style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                isBlue == true ? Color(0xff246BFD) : Colors.transparent),
            // padding:
            //     MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 17)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
                side: BorderSide(
                    color: isBlue == false ? Colors.white : Color(0xff246BFD),
                    width: 1)))),
      ),
    );
  }
}
