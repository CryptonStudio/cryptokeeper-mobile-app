import 'package:ck_login/UI/PIN_code_page/PIN_code_keyboard.dart';
import 'package:ck_login/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PinCodePage extends StatefulWidget {
  @override
  _PinCodePageState createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            "assets/svg/promo.svg",
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 24),
                  child: Text(
                    LangKeys.enter_pin_code,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9D9DA6),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < PIN_CODE_LENGTH; i++) dot(),
                    ],
                  ),
                )
              ],
            ),
          ),
          PinCodeKeyboard(),
        ],
      ),
    );
  }
}

Widget dot() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: CustomColors.buttonBackGroundColor,
        shape: BoxShape.circle,
      ),
    ),
  );
}

Widget emptyDot() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: CustomColors.disabledButtonBackGroundColor,
        shape: BoxShape.circle,
      ),
    ),
  );
}
