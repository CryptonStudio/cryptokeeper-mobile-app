import 'package:ck_login/constants.dart';
import 'package:ck_login/widgets/custom_button.dart';
import 'package:ck_login/widgets/input_form.dart';
import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FiltrationPage extends StatefulWidget {
  @override
  _FiltrationPageState createState() => _FiltrationPageState();
}

class _FiltrationPageState extends State<FiltrationPage> {

  var selectedRange = RangeValues(10, 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RangeSlider(
            activeColor: CustomColors.white,
            inactiveColor: CustomColors.acceptedColor,
            values: selectedRange,
            min: 0,
            max: 100,
            divisions: 11,
            onChanged: (RangeValues newRange) {
              this.setState(() {
                selectedRange = newRange;
              });
            },
          ),
          CustomButton.primary(
            title: "press me",
            onPress: () => showCupertinoModalBottomSheet(
              duration: Duration(milliseconds: 300),
              expand: true,
              context: context,
              builder: (context) => myBar(),
            ),
          )
        ],
      ),
    );
  }

  Widget myBar() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 24),
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  width: 53,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Color(0xFF62626D),
                      borderRadius: BorderRadius.circular(13)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Text(
                  "Filtration",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColors.white,
                    fontSize: 17,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Text(
                      "Close",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: CustomColors.buttonBackGroundColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Choose merchant",
                style: TextStyle(color: CustomColors.white, fontSize: 17),
              ),
            ),
            InputForm.filled(
              hintText: "From price",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22.5, bottom: 13),
              child: Divider(
                height: 1,
                thickness: 1,
                color: CustomColors.inputBackGroundColor,
              ),
            ),
            Text(
              "Some setting",
              style: TextStyle(color: CustomColors.white, fontSize: 17),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Expanded(
                    child: InputForm.filled(
                      hintText: "From price",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InputForm.filled(
                      hintText: "To price",
                    ),
                  ),
                ],
              ),
            ),
            RangeSlider(
              activeColor: CustomColors.white,
              inactiveColor: CustomColors.acceptedColor,
              values: selectedRange,
              min: 0,
              max: 100,
              divisions: 11,
              onChanged: (RangeValues newRange) {
                this.setState(() {
                  selectedRange = newRange;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}


