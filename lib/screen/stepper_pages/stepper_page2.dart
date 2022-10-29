import 'package:flutter/material.dart';
import 'package:task_management_mobile_app/widgets/custom_button.dart';

class StepperPage2 extends StatelessWidget {
  const StepperPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          CustomButton(buttonText: "Create Your Own Team", isBlue: true),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              "Or",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffF8F8F8)),
            ),
          ),
          CustomButton(buttonText: "Join Team", isBlue: false)
        ],
      ),
    );
  }
}
