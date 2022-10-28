import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: SvgPicture.asset(
            "assets/icon1.svg",
          ),
        ),
        Text("Maruf Robin"),
        Text("Your Personal Task Manager"),
        Container(
          child: Row(
            children: [Text("Getting Started"), Icon(Icons.arrow_forward_ios)],
          ),
        )
      ],
    );
  }
}
