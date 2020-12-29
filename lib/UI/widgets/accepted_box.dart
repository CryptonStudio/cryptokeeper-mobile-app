import 'package:ck_login/UI/transaction_details_page/transaction_details_accepted_page.dart';
import 'package:ck_login/response_models/accepted_response.dart';
import 'package:ck_login/response_models/transaction_detail_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class AcceptedBox extends StatelessWidget {
  final AcceptedResponse response;

  const AcceptedBox({Key key, this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = const EdgeInsets.only(left: 20, right: 20, top: 10);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => TranActionsDetailsAccepted(
              response: new TransactionDetailsResponse("key", "valueInCrypto",
                  "asdasdasd", "value", response.accepted),
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7.5),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF30303A),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  response.valueInCrypto,
                  style: TextStyle(color: CustomColors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: padding,
                child: Text(
                  response.key,
                  style: TextStyle(color: CustomColors.white, fontSize: 13),
                ),
              ),
              Padding(
                padding: padding,
                child: Text(
                  response.date,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF7C7C85),
                  ),
                ),
              ),
              response.accepted
                  ? Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                      child: Container(
                        width: 81,
                        height: 30,
                        decoration: BoxDecoration(
                          color: CustomColors.acceptedColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Accepted",
                            style: TextStyle(
                              color: CustomColors.acceptedColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                      child: Container(
                        width: 81,
                        height: 30,
                        decoration: BoxDecoration(
                          color: CustomColors.declinedColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Declined",
                            style: TextStyle(
                              color: CustomColors.declinedColor,
                            ),
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
