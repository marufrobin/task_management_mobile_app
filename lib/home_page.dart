import 'package:flutter/material.dart';
import 'package:task_management_mobile_app/screen/stepper_pages/stepper_page5.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      body: StepperPage5(),
    );
  }
}
