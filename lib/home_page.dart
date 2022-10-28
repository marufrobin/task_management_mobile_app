import 'package:flutter/material.dart';
import 'package:task_management_mobile_app/screen/splash.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      body: SplashPage(),
    );
  }
}
