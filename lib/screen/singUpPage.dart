import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/custom_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();

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
          Container(
            // margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextBeforeTF(script: "Your email address"),
                TextFormField(
                  controller: _emailController,
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
              ],
            ),
          ),
          CustomButton(buttonText: "Continue", isBlue: true),
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
