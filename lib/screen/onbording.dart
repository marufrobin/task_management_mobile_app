import 'dart:math';

import 'package:flutter/material.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
    ]);
  }
}
