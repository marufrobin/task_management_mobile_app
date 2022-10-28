import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onbording.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 32, top: 240),
          padding: EdgeInsets.all(33),
          decoration: BoxDecoration(
              color: Color(0xff292B3E), borderRadius: BorderRadius.circular(8)),
          child: SvgPicture.asset(
            "assets/icon1.svg",
          ),
        ),
        Text(
          "Maruf Robin",
          style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 36,
              color: Color(0xffE4E4E6),
              fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 64),
          child: Text(
            "Your Personal Task Manager",
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 17,
              color: Color(0xffE9E9EB),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => OnBordingPage()));
          },
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 200),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
                color: Color(0xff246BFD),
                borderRadius: BorderRadius.circular(28)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Getting Started",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 17,
                      color: Color(0xffE4E4E6),
                      fontWeight: FontWeight.w400),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.white,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
