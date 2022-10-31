import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_mobile_app/screen/stepper_pages/stepper_page2.dart';

import '../../widgets/custom_button.dart';

class StepperPage1 extends StatefulWidget {
  StepperPage1({Key? key}) : super(key: key);

  @override
  State<StepperPage1> createState() => _StepperPage1State();
}

class _StepperPage1State extends State<StepperPage1> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Text(
            "Complete Your Profiles",
            style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xffF8F8F8)),
          ),
          SizedBox(
            height: 16,
          ),
          CircleAvatar(
              backgroundColor: Color(0xff8E8E93),
              radius: 70,
              child: Icon(
                Icons.camera_alt_outlined,
                size: 30,
                color: Color(0xffF8F8F8),
              )),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextBeforeTF(script: "Enter your email address"),
                TextFormField(
                  enabled: true,
                  controller: _emailController,
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8E)),
                  decoration: InputDecoration(
                    filled: true,
                    // fillColor: Colors.red,

                    contentPadding: EdgeInsets.only(bottom: 16),
                    prefixIcon: Container(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: SvgPicture.asset(
                        "assets/mailIcon.svg",
                        fit: BoxFit.cover,
                        height: 24,
                        width: 24,
                      ),
                    ),
                    // labelText: "Email",
                    hintText: "Enter your email address",
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
                SizedBox(height: 16),
                buildTextBeforeTF(script: "Your password"),
                TextFormField(
                  controller: _passwordController,
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8E)),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16, bottom: 16),
                    prefixIcon: Container(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: SvgPicture.asset(
                        "assets/keyIcon.svg",
                        fit: BoxFit.cover,
                        height: 24,
                        width: 24,
                      ),
                    ),
                    // labelText: "Email",
                    hintText: "Enter your password",
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
          CustomButton(
            buttonText: "Continue",
            isBlue: true,
            navigatorPage: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => StepperPage2())),
          ),
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
