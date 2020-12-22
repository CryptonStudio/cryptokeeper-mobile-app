import 'package:ck_login/response_models/home_response.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AllPage extends StatefulWidget {
  @override
  _AllPageState createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
          box(
            HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
          ),
        ],
      ),
    );
  }

  Widget box(HomeResponse response) {
    var padding = const EdgeInsets.only(left: 20, right: 20, top: 10);
    return Padding(
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
              padding: padding,
              child: Text(
                response.key,
                style: TextStyle(color: CustomColors.white, fontSize: 13),
              ),
            ),
            Padding(
              padding: padding,
              child: Text(
                response.valueInCrypto,
                style: TextStyle(color: CustomColors.white, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 17.5),
              child: Text(
                "\$ " + response.valueInDollars,
                style: TextStyle(color: Color(0xFF62626D), fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
