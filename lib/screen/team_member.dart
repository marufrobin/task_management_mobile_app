import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeamMember extends StatelessWidget {
  const TeamMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191A22),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                  10,
                  (index) => Container(
                        margin: EdgeInsets.only(left: 8, top: 10),
                        padding: EdgeInsets.all(16),
                        height: 130,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Color(0xff292B3E),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 68,
                                  width: 68,
                                  child: Stack(children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Color(0xff8E8E93),
                                    ),
                                    Positioned(
                                      left: 34,
                                      top: 34,
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.blue,
                                      ),
                                    )
                                  ]),
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/dot.svg",
                                      height: 24,
                                      width: 24,
                                    ),
                                    SizedBox(
                                      height: 40,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "Maruf Robin",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffF8F8F8)),
                            ),
                            Text(
                              "marufrobin5@gmail.com",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffE9E9EB)),
                            )
                          ],
                        ),
                      ))),
        ),
        Positioned(
          bottom: 24,
          right: 16,
          child: FloatingActionButton(
            onPressed: (() {}),
            child: Icon(Icons.add),
          ),
        )
      ]),
      // bottomSheet: FloatingActionButton(
      //
      //   // elevation: 0,
      //
      //     onPressed: (() {
      //
      //     }),
      //     child: Icon(Icons.add),
      //     shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(32),
      //         side: BorderSide(color: Colors.transparent))),
    );
  }
}
