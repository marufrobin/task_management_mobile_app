import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_mobile_app/screen/stepper_pages/stepper_page5.dart';

import '../../widgets/custom_button.dart';

class StepperPage3 extends StatelessWidget {
  StepperPage3({Key? key}) : super(key: key);

  TextEditingController _teamController = TextEditingController();

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
          Text(
            "Create Your Own Team?",
            style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xffF8F8F8)),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            // margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextBeforeTF(script: "Your Team Name"),
                TextFormField(
                  controller: _teamController,
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8E)),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 16),
                    prefixIcon: Container(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: SvgPicture.asset(
                        "assets/userProfile.svg",
                        fit: BoxFit.cover,
                        height: 24,
                        width: 24,
                        color: Color(0xff8A8A8E),
                      ),
                    ),
                    // labelText: "Email",
                    hintText: "e.g Robin Team",
                    hintStyle: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8A8A8E)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff8E8E93), width: 2),
                        borderRadius: BorderRadius.circular(28)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
              buttonText: "Continue",
              isBlue: true,
              navigatorPage: (() => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StepperPage5()),
                  ))),
        ],
      ),
    );
  }

  Container buildTextBeforeTF({required String script, Color? clr = null}) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      child: Text(
        script,
        style: TextStyle(
            fontFamily: "Nunito",
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: clr != null ? clr : Color(0xff8A8A8E)),
      ),
    );
  }
}
