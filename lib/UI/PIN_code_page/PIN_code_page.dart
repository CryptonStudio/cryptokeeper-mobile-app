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
        mainAxisAlignment: MainAxisAlignment.end ,
        children: [
          SvgPicture.asset(
            "assets/svg/promo.svg",
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24,bottom: 24),
                  child: Text(
                    "Enter PIN code",
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
                      dot(),
                      dot(),
                      dot(),
                      dot(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //color: Colors.amber,
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Spacer(),
                    number("1"),
                    Spacer(),
                    number("2"),
                    Spacer(),
                    number("3"),
                    Spacer(),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    number("4"),
                    Spacer(),
                    number("5"),
                    Spacer(),
                    number("6"),
                    Spacer(),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    number("7"),
                    Spacer(),
                    number("8"),
                    Spacer(),
                    number("9"),
                    Spacer(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    children: [
                      Spacer(),
                      number("", assetPath: "assets/svg/finger_print.svg"),
                      Spacer(),
                      number("0"),
                      Spacer(),
                      number("3", assetPath: "assets/svg/delete_arrow.svg"),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
          border: Border.all(width: 1, color: Color(0xFF052B43))),
    ),
  );
}

Widget number(String number, {String assetPath}) {
  return Container(
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
  );
}
