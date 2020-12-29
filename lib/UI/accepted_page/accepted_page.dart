import 'package:ck_login/response_models/accepted_response.dart';
import 'package:ck_login/UI/widgets/accepted_box.dart';
import 'package:flutter/material.dart';

class AcceptedPage extends StatefulWidget {
  @override
  _AcceptedPageState createState() => _AcceptedPageState();
}

class _AcceptedPageState extends State<AcceptedPage> {
  @override
  Widget build(BuildContext context) {
    AcceptedResponse response = new AcceptedResponse(true, "21B1280F...E8AE6",
        "0.25634789 BTC", "1 week ago (Nov 26, 2020, 4:13 PM)");
    return ListView(
      children: [
        AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        ),AcceptedBox(
          response: response,
        )
      ],
    );
  }
}
