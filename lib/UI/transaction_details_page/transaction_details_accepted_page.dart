import 'package:ck_login/response_models/transaction_detail_response.dart';
import 'package:ck_login/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class TranActionsDetailsAccepted extends StatelessWidget {
  final TransactionDetailsResponse response;

  const TranActionsDetailsAccepted({Key key, this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset("assets/svg/arrow_left.svg"),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Transaction details",
                          style: TextStyle(
                              color: CustomColors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF30303A),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Amount",
                            style: TextStyle(
                                color: CustomColors.disabledTextColor,
                                fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "Dx38hf98n...23rf94",
                            style: TextStyle(
                                color: CustomColors.white, fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            "0.25634789 BTC",
                            style: TextStyle(
                              fontSize: 22,
                              color: CustomColors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20, top: 3),
                          child: Text(
                            "\$ 123.43",
                            style: TextStyle(
                              fontSize: 13,
                              color: CustomColors.disabledTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF30303A),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Policy",
                              style: TextStyle(
                                fontSize: 13,
                                color: CustomColors.disabledTextColor,
                              ),
                            ),
                            Text(
                              "16 / 20 \nvotes need",
                              style: TextStyle(
                                color: CustomColors.white,
                                fontSize: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: SvgPicture.asset("assets/svg/divider.svg"),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF62626D),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Not Vote",
                                    style: TextStyle(
                                      color:
                                          CustomColors.transactionsDetailsText,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF28C642),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Accepted",
                                      style: TextStyle(
                                        color: CustomColors
                                            .transactionsDetailsText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 20),
                              child: Row(
                                children: [
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEDC807),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                        color: CustomColors
                                            .transactionsDetailsText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColors.inputBackGroundColor,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 15),
                                  child: Text(
                                    "Value",
                                    style: TextStyle(
                                      color: Color(0xFF7C7C85),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF9AA4B),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                            "assets/svg/bitcoin.svg"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Bitcoin",
                                          style: TextStyle(
                                            color: CustomColors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColors.buttonBackGroundColor,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 22,
                              left: 20,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Other merchant transaction",
                                  style: TextStyle(
                                    color: CustomColors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12, bottom: 24),
                                  child: Row(
                                    children: [
                                      Text(
                                        "10",
                                        style: TextStyle(
                                            color: CustomColors.white,
                                            fontSize: 17),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              right: 30,
                                            ),
                                            child: SvgPicture.asset(
                                                "assets/svg/arrow_right.svg"),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: Text(
                  "Status",
                  style: TextStyle(
                    color: Color(0xFF7C7C85),
                    fontSize: 13,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "2 weeks ago",
                        style: TextStyle(color: CustomColors.white),
                      ),
                    ),
                  ),
                  response.accepted
                      ? Container(
                          width: 81,
                          height: 30,
                          decoration: BoxDecoration(
                            color: CustomColors.acceptedColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Accepted",
                            style: TextStyle(
                                color: CustomColors.acceptedColor,
                                fontSize: 13),
                          ),
                        )
                      : Container(
                          width: 81,
                          height: 30,
                          decoration: BoxDecoration(
                            color: CustomColors.declinedColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Declined",
                            style: TextStyle(
                                color: CustomColors.declinedColor,
                                fontSize: 13),
                          ),
                        )
                ],
              ),
              customDivider(),
              !response.accepted
                  ? Column(
                      children: [
                        labelAndText("Decline reason",
                            "Lorem ipsum dolor sit amet nut re kowuy defrato rox feratiq"),
                        customDivider(),
                      ],
                    )
                  : SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "Transaction hash",
                  style: TextStyle(color: CustomColors.disabledTextColor),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "21B1280F42784423ADDC97988B809FE2B88E523D9790538E2335C0FBF25C8AE6",
                      style: TextStyle(color: CustomColors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CustomButton.colored(
                        backgroundColor: CustomColors.buttonBackGroundColor,
                        textColor: CustomColors.white,
                        height: 35,
                        width: 81,
                        title: "Copy",
                        // padding:
                        //     EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                        onPress: () {
                          print("copy pressed");
                        }),
                  )
                ],
              ),
              customDivider(),
              Text(
                "Creation date",
                style: TextStyle(color: CustomColors.disabledTextColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      "2 weeks ago",
                      style: TextStyle(color: CustomColors.white, fontSize: 17),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Nov 26, 2020, 4:13 PM",
                          style:
                              TextStyle(color: Color(0xFf62626D), fontSize: 11),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              customDivider(),
              labelAndText("To", "dx1dj0j2ze23pyayt79ae4swnr9s86rvphsnhnsj6"),
              customDivider(),
              labelAndText("From", "dx1dj0j2ze23pyayt79ae4swnr9s86rvphsnhnsj6"),
              customDivider(),
              labelAndText("Validator Address",
                  "dx1dj0j2ze23pyayt79ae4swnr9s86rvphsnhnsj6"),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customDivider() {
    return Divider(
      height: 35,
      thickness: 1,
      color: CustomColors.inputBackGroundColor,
    );
  }

  Widget labelAndText(String labelText, String info) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: CustomColors.disabledTextColor,
            fontSize: 13,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            info,
            style: TextStyle(
              color: CustomColors.white,
              fontSize: 17,
            ),
          ),
        )
      ],
    );
  }
}
