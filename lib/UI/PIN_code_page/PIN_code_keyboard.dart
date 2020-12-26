import 'package:ck_login/UI/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class PinCodeKeyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List pin = new List();
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Spacer(),
              number(number: "1", pin: pin, context: context),
              Spacer(),
              number(number: "2", pin: pin, context: context),
              Spacer(),
              number(number: "3", pin: pin, context: context),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              number(number: "4", pin: pin, context: context),
              Spacer(),
              number(number: "5", pin: pin, context: context),
              Spacer(),
              number(number: "6", pin: pin, context: context),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              number(number: "7", pin: pin, context: context),
              Spacer(),
              number(number: "8", pin: pin, context: context),
              Spacer(),
              number(number: "9", pin: pin, context: context),
              Spacer(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                Spacer(),
                number(assetPath: "assets/svg/finger_print.svg"),
                Spacer(),
                number(number: "0", pin: pin, context: context),
                Spacer(),
                number(
                    assetPath: "assets/svg/delete_arrow.svg", context: context),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget number({
    String number,
    String assetPath,
    List pin,
    BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        pin.add(number);
        print("$pin");
        if (pin.length == PIN_CODE_LENGTH) {
          pin.clear();
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => Homepage(),
              ),
              (Route<dynamic> route) => false);
        }
      },
      child: Container(
        color: Colors.black,
        width: 53,
        height: 53,
        child: Center(
          child: assetPath == null
              ? Text(
                  number,
                  style: TextStyle(
                    fontSize: 25,
                    color: CustomColors.white,
                  ),
                )
              : SvgPicture.asset(assetPath),
        ),
      ),
    );
  }
}
