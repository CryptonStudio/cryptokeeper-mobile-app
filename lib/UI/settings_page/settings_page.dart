import 'package:ck_login/constants.dart';
import 'package:ck_login/widgets/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 50,
              bottom: 18,
            ),
            child: Text(
              "Settings",
              style: TextStyle(
                color: CustomColors.white,
                fontSize: 34,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 20,
            ),
            child: GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Container(
                width: double.infinity,
                height: 69,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Connect to security broker",
                        style: TextStyle(
                          color: CustomColors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: SvgPicture.asset("assets/svg/arrow.svg"),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: CustomColors.inputBackGroundColor,
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Container(
                width: double.infinity,
                height: 69,
                child: Row(
                  children: [
                    Text(
                      "Some setting",
                      style: TextStyle(
                        color: CustomColors.white,
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset(
                            "assets/svg/arrow.svg",
                            color: Color(0xFF3F3F4B),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Container(
                width: double.infinity,
                height: 69,
                child: Row(
                  children: [
                    Text(
                      "Some setting",
                      style: TextStyle(
                        color: CustomColors.white,
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CupertinoSwitch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeColor: CustomColors.buttonBackGroundColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Container(
                width: double.infinity,
                height: 69,
                child: Row(
                  children: [
                    Text(
                      "Some setting",
                      style: TextStyle(
                        color: CustomColors.white,
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset(
                            "assets/svg/arrow.svg",
                            color: Color(0xFF3F3F4B),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Container(
                width: double.infinity,
                height: 69,
                child: Row(
                  children: [
                    Text(
                      "Some setting",
                      style: TextStyle(
                        color: CustomColors.white,
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CupertinoSwitch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeColor: CustomColors.buttonBackGroundColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Text(
              "Logout",
              style: TextStyle(
                fontSize: 17,
                color: CustomColors.declinedColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
