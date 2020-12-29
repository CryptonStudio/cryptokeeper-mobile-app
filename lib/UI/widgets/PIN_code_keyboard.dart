import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class PinCodeKeyboard extends StatelessWidget {
  final Function onCodeButtonPressed;
  final Function onRemoveButtonPressed;

  const PinCodeKeyboard({
    Key key,
    @required this.onCodeButtonPressed,
    @required this.onRemoveButtonPressed,
  }) : super(key: key);

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
              number(number: "1"),
              Spacer(),
              number(
                number: "2",
              ),
              Spacer(),
              number(
                number: "3",
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              number(
                number: "4",
              ),
              Spacer(),
              number(
                number: "5",
              ),
              Spacer(),
              number(
                number: "6",
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              number(
                number: "7",
              ),
              Spacer(),
              number(
                number: "8",
              ),
              Spacer(),
              number(
                number: "9",
              ),
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
                number(
                  number: "0",
                ),
                Spacer(),
                number(
                  assetPath: "assets/svg/delete_arrow.svg",
                ),
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
  }) {
    return GestureDetector(
      onTap: assetPath == null
          ? onRemoveButtonPressed
          : () => onCodeButtonPressed(number),
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
