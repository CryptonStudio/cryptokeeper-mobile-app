import 'package:ck_login/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionDetails extends StatelessWidget {
  // final TransactionsDetailsResponse response;
  //
  // const TransactionDetails({Key key, this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = const EdgeInsets.only(left: 20, right: 20, top: 10);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset("assets/svg/arrow_left.svg")),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Transaction details",
                      style: TextStyle(color: CustomColors.white, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
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
                                  padding:
                                      const EdgeInsets.only(top: 12, bottom: 24),
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
            ),
          ],
        ),
      ),
    );
  }
}
