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
                removeButton(assetPath: "assets/svg/finger_print.svg"),
                Spacer(),
                number(
                  number: "0",
                ),
                Spacer(),
                removeButton(
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
    @required String number,
  }) {
    return GestureDetector(
      onTap: () => onCodeButtonPressed(number),
      child: Container(
        color: Colors.black,
        width: 53,
        height: 53,
        child: Center(
            child: Text(
          number,
          style: TextStyle(
            fontSize: 25,
            color: CustomColors.white,
          ),
        )),
      ),
    );
  }

  Widget removeButton({
    @required String assetPath,
  }) {
    return GestureDetector(
      onTap: onRemoveButtonPressed,
      child: Container(
        color: Colors.black,
        width: 53,
        height: 53,
        child: Center(
          child: SvgPicture.asset(assetPath),
        ),
      ),
    );
  }
}
