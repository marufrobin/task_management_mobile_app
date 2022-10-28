import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_management_mobile_app/widgets/custom_button.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({Key? key}) : super(key: key);

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
        CustomButton(buttonText: "Sign Up", isBlue: true),
        CustomButton(buttonText: "Login", isBlue: false)
      ],
    );
  }
}
